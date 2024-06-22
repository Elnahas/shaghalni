import 'package:bloc/bloc.dart';
import 'package:shaghalni/features/jobs_list/logic/jobs_list_state.dart';


class JobsListCubit extends Cubit<JobsListState> {
  JobsListCubit() : super(JobsListState.initial());
}
