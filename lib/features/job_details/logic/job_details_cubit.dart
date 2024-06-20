import 'package:bloc/bloc.dart';
import 'package:shaghalni/core/data/models/job_model.dart';
import 'package:shaghalni/features/job_details/logic/job_details_state.dart';

import '../../../core/repositories/job_repository.dart';

class JobDetailsCubit extends Cubit<JobDetailsState> {
  final JobRepository _jobRepository;

  JobDetailsCubit(this._jobRepository) : super(JobDetailsState.initial());

  Future<void> getJobDetails(String id) async {
        emit(JobDetailsState.jobDetailsLoading());
    try {
      JobModel? job = await _jobRepository.getSingleJob(id);
      emit(JobDetailsState.jobDetailsSuccess(job!));
    } catch (e) {
      emit(JobDetailsState.jobDetailsFailure(e.toString()));
    }
  }
}
