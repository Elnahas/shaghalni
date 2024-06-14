import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/data/models/category_model.dart';
import 'package:shaghalni/core/data/models/job_model.dart';
import 'package:shaghalni/features/home/logic/home_cubit.dart';
import 'package:shaghalni/features/home/logic/home_state.dart';
import 'package:shaghalni/features/home/ui/widgets/home_shimmer_widget.dart';

import '../../../../core/helpers/spacing.dart';
import 'home_sections/category_list_section.dart';
import 'home_sections/job_list_section.dart';

class CategoriesAndJobsBlocBuilder extends StatelessWidget {
  const CategoriesAndJobsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is CategoriesAndJobsLoading ||
          current is CategoriesAndJobsSuccess ||
          current is CategoriesAndJobsFailure,
      builder: (context, state) {
        return state.maybeWhen(
            categoriesAndJobsLoading: () => setupLoading(),
            categoriesAndJobsSuccess: (categoryModel, jobs) =>
                setupSuccess(categoryModel, jobs),
            categoriesAndJobsFailure: (error) => setupError(error),
            orElse: () => const SizedBox.shrink());
      },
    );
  }

  Widget setupLoading() {
    return HomeShimmerWidget();
  }

  Widget setupSuccess(
      List<CategoryModel> categoryList, List<JobModel> jobList) {
    return Column(
      children: [
        CategoryListSection(categoryList: categoryList),
        verticalSpace(20),
        JobListSection(jobList: jobList),
      ],
    );
  }

  Widget setupError(String error) {
    return Text(error);
  }
}
