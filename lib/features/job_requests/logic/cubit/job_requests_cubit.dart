import 'package:bloc/bloc.dart';
import 'package:shaghalni/features/job_requests/logic/cubit/job_requests_state.dart';


class JobRequestsCubit extends Cubit<JobRequestsState> {
  
  JobRequestsCubit() : super(JobRequestsState.initial());
}
