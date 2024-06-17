import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/functions/show_modal_bottom_sheet.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/core/theming/app_colors.dart';
import 'package:shaghalni/features/add_job/logic/cubit/add_job_cubit.dart';
import 'package:shaghalni/features/add_job/logic/cubit/add_job_state.dart';
import '../../../../core/widgets/select_list_widget.dart';
import '../../../../core/widgets/shimmer_list_widget.dart';
import '../widgets/add_job_app_bar.dart';
import '../widgets/add_job_form.dart';
import '../widgets/button_add_job_bloc_builder.dart';
import '../widgets/my_page_indicator.dart';

class AddJobScreen extends StatefulWidget {
  const AddJobScreen({super.key});

  @override
  State<AddJobScreen> createState() => _AddJobScreenState();
}

class _AddJobScreenState extends State<AddJobScreen> {
  late PageController pageController;
  late final AddJobCubit _cubit;

  @override
  void initState() {
    _cubit = context.read<AddJobCubit>();
    pageController = _cubit.pageController;
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (didPop) {
          Navigator.pop(context);
        } else {
          onWillPop(context, 'Are you sure you want to exit?');
        }
      },
      child: Scaffold(
        appBar: AddJobAppBar(),
        backgroundColor: AppColors.lighterGray,
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              MyPageIndicator(pageController),
              verticalSpace(10),
              Expanded(
                child: BlocConsumer<AddJobCubit, AddJobState>(
                  listenWhen: (previous, current) =>
                      current is AddJobSuccess || current is AddJobFailure,
                  listener: (context, state) {},
                  buildWhen: (previous, current) =>
                      current is CategoryAndCityLoading ||
                      current is CategoryAndCitySuccess ||
                      current is CityIndexUpdated || current is CategoryIndexUpdated,
                  builder: (context, state) {

                    return state is CategoryAndCityLoading ? ShimmerList() : PageView(
                      onPageChanged: (value) {
                       //context.read<AddJobCubit>().currentStep = value +1 ;

                      },
                      //physics: NeverScrollableScrollPhysics(),
                      children: [
                        SelectListWidget(
                          title: "Select Category",
                          items: _cubit.getCategoryList,
                          initialSelectedIndex:
                              context.read<AddJobCubit>().selectedCategoryIndex,
                          onItemSelected: (index) {
                            context
                                .read<AddJobCubit>()
                                .updateSelectedCategoryIndex(index);
                          },
                          itemBuilder: (category) => category.name,
                          paddingHorizontal: 14.w,
                        ),
                        SelectListWidget(
                          title: "Select City",
                          items: _cubit.getCityList,
                          initialSelectedIndex:
                              context.read<AddJobCubit>().selectedCityIndex,
                          onItemSelected: (index) {
                            context
                                .read<AddJobCubit>()
                                .updateSelectedCityIndex(index);
                          },
                          itemBuilder: (city) => city.name,
                          paddingHorizontal: 14.w,
                        ),
                        const AddJobForm(),
                      ],
                      controller: pageController,
                    );
                  },
                ),
              ),
              ButtonAddJobBlocBuilder()
            ],
          ),
        ),
      ),
    );
  }
}
