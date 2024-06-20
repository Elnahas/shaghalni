import 'package:bloc/bloc.dart';
import 'package:shaghalni/features/job_details/logic/job_details_state.dart';

import '../../../core/repositories/job_repository.dart';


class JobDetailsCubit extends Cubit<JobDetailsState> {

  final JobRepository _jobRepository;

  JobDetailsCubit(this._jobRepository) : super(JobDetailsState.initial());
}
