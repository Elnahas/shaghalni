import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/functions/show_modal_bottom_sheet.dart';
import 'package:shaghalni/core/theming/app_colors.dart';
import 'package:shaghalni/core/widgets/app_text_button.dart';
import 'package:shaghalni/features/add_job/logic/cubit/add_job_cubit.dart';
import 'package:shaghalni/features/add_job/logic/cubit/add_job_state.dart';
import 'package:uuid/uuid.dart';
import '../../../../core/data/enum/job_status.dart';
import '../../../../core/data/models/job_model.dart';
import '../../../../core/widgets/select_list_widget.dart';
import '../../../../core/widgets/shimmer_list_widget.dart';
import '../widgets/add_job_app_bar.dart';
import '../widgets/add_job_form.dart';
import '../widgets/my_page_indicator.dart';

class AddJobScreen extends StatefulWidget {
  const AddJobScreen({super.key});

  @override
  State<AddJobScreen> createState() => _AddJobScreenState();
}

class _AddJobScreenState extends State<AddJobScreen> {
  PageController myController = PageController();
  late final AddJobCubit _cubit;

  @override
  void initState() {
    _cubit = context.read<AddJobCubit>();
    super.initState();
  }

  @override
  void dispose() {
    myController.dispose();
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyPageIndicator(myController),
                ],
              ),
              Expanded(
                child: BlocBuilder<AddJobCubit, AddJobState>(
                  buildWhen: (previous, current) =>
                      current is CategoryAndCityLoading ||
                      current is CategoryAndCitySuccess,
                  builder: (context, state) {
                    return state.maybeWhen(
                      categoryAndCityLoading: () => ShimmerList(),
                      categoryAndCitySuccess: (categoryModel, cityModel) =>
                          PageView(
                        onPageChanged: (value) {
                          _cubit.currentStep = value;
                          setState(() {});
                        },
                        //physics: NeverScrollableScrollPhysics(),
                        children: [
                          SelectListWidget(
                            title: "Select Category",
                            items: categoryModel,
                            initialSelectedIndex: context
                                .read<AddJobCubit>()
                                .selectedCategoryIndex,
                            onItemSelected: context
                                .read<AddJobCubit>()
                                .updateSelectedCategoryIndex,
                            itemBuilder: (category) => category.name,
                            paddingHorizontal: 14.w,
                          ),
                          SelectListWidget(
                            title: "Select City",
                            items: cityModel,
                            initialSelectedIndex: _cubit.selectedCityIndex,
                            onItemSelected: context
                                .read<AddJobCubit>()
                                .updateSelectedCityIndex,
                            itemBuilder: (city) => city.name,
                            paddingHorizontal: 14.w,
                          ),
                          const AddJobForm(),
                        ],
                        controller: myController,
                      ),
                      orElse: () => const SizedBox.shrink(),
                    );
                  },
                ),
              ),
              BlocBuilder<AddJobCubit, AddJobState>(
                builder: (context, state) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    child: _cubit.currentStep == 2
                        ? AppTextButton(
                            isLoading: state is AddJobLoading,
                            buttonText: 'Submit',
                            onPressed: () {
                              validateAddJob();
                            })
                        : AppTextButton(
                            buttonText: 'Next',
                            onPressed: () {
                              myController.nextPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeIn);
                            },
                          ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void validateAddJob() {
    if (_cubit.formKey.currentState!.validate()) {
      var uuid = const Uuid();
      String customId = uuid.v4();

      final job = JobModel(
          id: customId,
          title: _cubit.jobTitleController.text,
          description: _cubit.jobDescriptionController.text,
          city: _cubit.city,
          category: _cubit.category,
          salary: double.tryParse(_cubit.jobSalaryController.text) ?? 0.0,
          isHideSalary: _cubit.isHideSalary,
          status: JobStatus.pending,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
          views: 0);
      _cubit.addJob(job);
    }
  }
}
