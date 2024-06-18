import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/helpers/extentions.dart';
import 'package:shaghalni/core/routing/routes.dart';
import 'package:shaghalni/features/add_job/logic/cubit/add_job_cubit.dart';
import 'package:shaghalni/features/add_job/ui/widgets/add_job_form.dart';

import '../../../../core/functions/show_snack_bar.dart';
import '../../../../core/widgets/select_list_widget.dart';
import '../../../../core/widgets/shimmer_list_widget.dart';
import '../../logic/cubit/add_job_state.dart';

class PageViewBlocConsumer extends StatelessWidget {
  final PageController pageController;
  const PageViewBlocConsumer({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<AddJobCubit, AddJobState>(
                  listenWhen: (previous, current) =>
                      current is AddJobSuccess ||
                      current is AddJobFailure ||
                      current is CategoryAndCityFailure,
                  listener: (context, state) {
                    state.whenOrNull(
                      addJobSuccess: () {
                        context.pushNamedAndRemoveUntil(Routes.home,
                            predicate: (Route<dynamic> route) => false);
                      },
                      addJobFailure: (error) {
                        showSnackBar(context, error);
                      },
                      categoryAndCityFailure: (error) {
                        showSnackBar(context, error);
                      },
                    );
                  },
                  buildWhen: (previous, current) =>
                      current is CategoryAndCityLoading ||
                      current is CategoryAndCitySuccess ||
                      current is CityIndexUpdated ||
                      current is CategoryIndexUpdated,
                  builder: (context, state) {
                    return state is CategoryAndCityLoading
                        ? ShimmerList()
                        : PageView(
                            onPageChanged: (value) {
                              //context.read<AddJobCubit>().currentStep = value +1 ;
                            },
                            physics: NeverScrollableScrollPhysics(),
                            children: [
                              SelectListWidget(
                                title: "Select Category",
                                items: state is CategoryAndCitySuccess ? state.categoryList : context.read<AddJobCubit>().getCategoryList,
                                initialSelectedIndex: context
                                    .read<AddJobCubit>()
                                    .selectedCategoryIndex,
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
                                items: state is CategoryAndCitySuccess ? state.cityList : context.read<AddJobCubit>().getCityList,
                                initialSelectedIndex: context
                                    .read<AddJobCubit>()
                                    .selectedCityIndex,
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
                );
  }
}