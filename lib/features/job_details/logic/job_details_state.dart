import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shaghalni/core/data/models/job_model.dart';

part 'job_details_state.freezed.dart';

@freezed
class JobDetailsState with _$JobDetailsState {

  const factory JobDetailsState.initial() = _Initial;

  const factory JobDetailsState.jobDetailsLoading() = JobDetailsLoading;

  const factory JobDetailsState.jobDetailsSuccess(JobModel jobModel) = JobDetailsSuccess;
  
  const factory JobDetailsState.jobDetailsFailure(String error) = JobDetailsFailure;

}
