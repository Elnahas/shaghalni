import 'package:bloc/bloc.dart';
import 'package:shaghalni/core/repositories/category_repository.dart';
import 'package:shaghalni/core/repositories/job_repository.dart';
import 'package:shaghalni/features/jobs_list/logic/jobs_list_state.dart';

import '../../../core/data/models/category_model.dart';
import '../../../core/data/models/job_model.dart';

class JobsListCubit extends Cubit<JobsListState> {
  final JobRepository _jobRepository;
  final CategoryRepository _categoryRepository;

  JobsListCubit(this._jobRepository, this._categoryRepository)
      : super(JobsListState.initial());

  Future<void> getCategories() async {
    emit(JobsListState.categoryLoading());
    try {
      List<CategoryModel> categories =
          await _categoryRepository.getCategories();
      emit(JobsListState.categorySuccess(categories));
      if (categories.isNotEmpty) {
        getJobsByCategory(categories[0].id);
      }
    } catch (e) {
      emit(JobsListState.categoryFailure(e.toString()));
    }
  }

  Future<void> getJobsByCategory(String categoryId) async {
    emit(JobsListState.jobsListLoading());
    try {
      List<JobModel> jobs = await _jobRepository.getJobsByCategory(categoryId);
      emit(JobsListState.jobsListSuccess(jobs));
    } catch (e) {
      emit(JobsListState.jobsListFailure(e.toString()));
    }
  }
}
