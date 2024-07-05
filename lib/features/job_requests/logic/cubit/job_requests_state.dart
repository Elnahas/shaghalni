import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shaghalni/core/data/models/job_model.dart';

part  "job_requests_state.freezed.dart";

@freezed
class JobRequestsState with _$JobRequestsState {

  //JobRequests
  const factory JobRequestsState.initial() = _Initial;
  
  const factory JobRequestsState.jobRequestsLoading() = JobRequestsLoading;
  const factory JobRequestsState.jobRequestsSuccess(List<JobModel> jobsList) = JobRequestsSuccess;
  const factory JobRequestsState.jobRequestsFailure(String error) = JobRequestsFailure;

}
