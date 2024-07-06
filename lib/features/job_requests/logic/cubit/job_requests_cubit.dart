import 'package:bloc/bloc.dart';
import 'package:shaghalni/core/repositories/job_repository.dart';
import 'package:shaghalni/features/job_requests/logic/cubit/job_requests_state.dart';

class JobRequestsCubit extends Cubit<JobRequestsState> {
  final JobRepository _jobRepository;

  JobRequestsCubit(this._jobRepository) : super(JobRequestsState.initial());

  Future<void> getJobRequests(String uId, {String? status}) async {
    emit(JobRequestsState.jobRequestsLoading());
    try {
      var jobRequests = await _jobRepository.getJobRequests(uId, status);
      if (jobRequests.isEmpty) {
        emit(JobRequestsState.noResultsFound());
      } else {
        emit(JobRequestsState.jobRequestsSuccess(jobRequests));
      }
    } catch (e) {
      emit(JobRequestsState.jobRequestsFailure(e.toString()));
    }
  }
}
