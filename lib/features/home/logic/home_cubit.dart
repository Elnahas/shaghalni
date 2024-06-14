import 'package:bloc/bloc.dart';
import 'package:shaghalni/core/repositories/category_repository.dart';
import 'package:shaghalni/core/repositories/job_repository.dart';
import 'package:shaghalni/features/home/logic/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final CategoryRepository _categoryRepository;
  final JobRepository _jobRepository;


  HomeCubit(this._categoryRepository, this._jobRepository) : super(HomeState.initial());

  Future<void> getCategoriesAndJobs() async {
    try {
      emit(HomeState.categoriesAndJobsLoading());
      var categoryList = await _categoryRepository.getCategories();
      var jobList = await _jobRepository.getJobs();
      emit(HomeState.categoriesAndJobsSuccess(categoryList, jobList));
    } catch (e) {
      emit(HomeState.categoriesAndJobsFailure(e.toString()));
    }
  }

}
