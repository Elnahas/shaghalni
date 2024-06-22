import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shaghalni/core/data/models/category_model.dart';
import 'package:shaghalni/core/data/models/job_model.dart';

part "jobs_list_state.freezed.dart";

@freezed
class JobsListState with _$JobsListState {

  const factory JobsListState.initial() = _Initial;

  const factory JobsListState.jobsListLoading() = JobsListLoading;
  const factory JobsListState.categoryLoading() = CategoryLoading;

  const factory JobsListState.jobsListSuccess(List<JobModel> jobList) = JobsListSuccess;
  const factory JobsListState.categorySuccess(List<CategoryModel> categoryList) = CategorySuccess;

  const factory JobsListState.jobsListFailure(String error) = JobsListFailure;
  const factory JobsListState.categoryFailure(String error) = CategoryFailure;

}
