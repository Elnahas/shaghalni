import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/helpers/extentions.dart';
import 'package:shaghalni/core/routing/routes.dart';
import 'package:shaghalni/features/job_form/logic/cubit/job_form_cubit.dart';
import 'package:shaghalni/features/job_form/ui/widgets/job_form.dart';

import '../../../../core/functions/show_snack_bar.dart';
import '../../../../core/widgets/select_list_widget.dart';
import '../../../../core/widgets/shimmer_list_widget.dart';
import '../../logic/cubit/job_form_state.dart';

class PageViewBlocConsumer extends StatelessWidget {
  final PageController pageController;
  const PageViewBlocConsumer({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<JobFormCubit, JobFormState>(
                  listenWhen: (previous, current) =>
                      current is AddJobSuccess ||
                      current is FormFailure ||
                      current is CategoryAndCityFailure,
                  listener: (context, state) {
                    state.whenOrNull(
                      addJobSuccess: () {
                        context.pushNamedAndRemoveUntil(Routes.home,
                            predicate: (Route<dynamic> route) => false);
                      },
                      formFailure: (error) {
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
                                items: state is CategoryAndCitySuccess ? state.categoryList : context.read<JobFormCubit>().getCategoryList,
                                initialSelectedIndex: context
                                    .read<JobFormCubit>()
                                    .selectedCategoryIndex,
                                onItemSelected: (index) {
                                  context
                                      .read<JobFormCubit>()
                                      .updateSelectedCategoryIndex(index);
                                },
                                itemBuilder: (category) => category.name,
                                paddingHorizontal: 14.w,
                              ),
                              SelectListWidget(
                                title: "Select City",
                                items: state is CategoryAndCitySuccess ? state.cityList : context.read<JobFormCubit>().getCityList,
                                initialSelectedIndex: context
                                    .read<JobFormCubit>()
                                    .selectedCityIndex,
                                onItemSelected: (index) {
                                  context
                                      .read<JobFormCubit>()
                                      .updateSelectedCityIndex(index);
                                },
                                itemBuilder: (city) => city.name,
                                paddingHorizontal: 14.w,
                              ),
                              const JobForm(),
                            ],
                            controller: pageController,
                          );
                  },
                );
  }
}