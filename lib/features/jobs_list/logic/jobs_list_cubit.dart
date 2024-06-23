import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shaghalni/core/repositories/category_repository.dart';
import 'package:shaghalni/core/repositories/job_repository.dart';
import 'package:shaghalni/features/jobs_list/logic/jobs_list_state.dart';

import '../../../core/data/models/category_model.dart';
import '../../../core/data/models/job_model.dart';

class JobsListCubit extends Cubit<JobsListState> {

  //repositories
  final JobRepository _jobRepository;
  final CategoryRepository _categoryRepository;

  var selectedCategoryIndex = 0;
  String? selectedCategoryId ;

  //search
  final TextEditingController searchTextEditingController = TextEditingController();

  JobsListCubit(this._jobRepository, this._categoryRepository)
      : super(JobsListState.initial());

  Future<void> getCategories(int? categoryIndex) async {
    emit(JobsListState.jobsListLoading());
    try {
      selectedCategoryIndex = categoryIndex ?? 0;

      List<CategoryModel> categories =
          await _categoryRepository.getCategoriesWithAllJobs();
      emit(JobsListState.categorySuccess(categories));
      if (categories.isNotEmpty) {
        getJobsByCategory(categoryId: categories[categoryIndex ?? 0].id);
      }
    } catch (e) {
      emit(JobsListState.categoryFailure(e.toString()));
    }
  }

  Future<void> getJobsByCategory({String? categoryId  , bool ascending = true , String? cityId , String? searchQuery } ) async {
    selectedCategoryId = categoryId;
    emit(JobsListState.jobsListLoading());
    try {
      List<JobModel> jobs;
       jobs = await _jobRepository.getJobs(categoryId: categoryId , ascending: ascending , cityId: cityId , searchQuery: searchQuery);
       if (jobs.isEmpty) {
        emit(JobsListState.noResultsFound());
      }else{
        emit(JobsListState.jobsListSuccess(jobs));
      }
      
    } catch (e) {
      emit(JobsListState.jobsListFailure(e.toString()));
    }
  }

  void selectCategory(int index) {
    selectedCategoryIndex = index;
  }
}
