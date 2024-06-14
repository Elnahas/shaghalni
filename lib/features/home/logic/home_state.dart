import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shaghalni/core/data/models/category_model.dart';

import '../../../core/data/models/job_model.dart';

part "home_state.freezed.dart";

@freezed
class HomeState with _$HomeState {

  const factory HomeState.initial() = _Initial;

    const factory HomeState.categoriesAndJobsLoading() = CategoriesAndJobsLoading;

  const factory HomeState.categoriesAndJobsSuccess( List<CategoryModel> categoryModel , List<JobModel> jobs) = SpecializationsSuccess;

  const factory HomeState.categoriesAndJobsFailure(String error) = CategoriesAndJobsFailure;

}
