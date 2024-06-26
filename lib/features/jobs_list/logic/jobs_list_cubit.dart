import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
  String? selectedCategoryId;

  //search
  final TextEditingController searchTextEditingController =
      TextEditingController();

  bool hasMoreData = true;
  DocumentSnapshot? _lastDocument;

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
        fetchJobs(
          categoryId: categories[categoryIndex ?? 0].id,
        );
      }
    } catch (e) {
      emit(JobsListState.categoryFailure(e.toString()));
    }
  }

  Future<void> getJobs(
      {String? categoryId,
      bool ascending = true,
      String? cityId,
      String? searchQuery,
      int limit = 30}) async {
    selectedCategoryId = categoryId;
    emit(JobsListState.jobsListLoading());
    try {
      List<JobModel> jobs;
      jobs = await _jobRepository.getJobs(
          categoryId: categoryId,
          ascending: ascending,
          cityId: cityId,
          searchQuery: searchQuery,
          limit: limit);
      if (jobs.isEmpty) {
        emit(JobsListState.noResultsFound());
      } else {
        emit(JobsListState.jobsListSuccess(jobs, false));
      }
    } catch (e) {
      emit(JobsListState.jobsListFailure(e.toString()));
    }
  }

  void fetchJobs(
      {String? categoryId,
      bool ascending = true,
      String? cityId,
      String? searchQuery}) async {

    restPagination();
    

    selectedCategoryId = categoryId;
    emit(JobsListState.jobsListLoading());
    try {
      final result = await _jobRepository.fetchJobs();
      final newJobs = result['data'] as List<JobModel>;
      _lastDocument = result['lastDocument'] as DocumentSnapshot?;
      if (newJobs.length < JobRepository.PAGE_SIZE) hasMoreData = false;
      if (newJobs.isEmpty) {
        emit(JobsListState.noResultsFound());
      } else {
        emit(JobsListState.jobsListSuccess(newJobs, false));
      }
    } catch (e) {
      emit(JobsListState.jobsListFailure(e.toString()));
    }
  }

  void fetchMoreJobs() async {
    if (!hasMoreData || state is JobsListLoading) return;

    emit(JobsListSuccess((state as JobsListSuccess).jobList, true));
    try {
      final result =
          await _jobRepository.fetchJobs(lastDocument: _lastDocument);
      final newJobs = result['data'] as List<JobModel>;
      _lastDocument = result['lastDocument'] as DocumentSnapshot?;
      if (newJobs.length < JobRepository.PAGE_SIZE) hasMoreData = false;
      emit(
          JobsListSuccess((state as JobsListSuccess).jobList + newJobs, false));
    } catch (e) {
      emit(JobsListFailure(e.toString()));
    }
  }

  void selectCategory(int index) {
    selectedCategoryIndex = index;
  }

  void restPagination() {
    _lastDocument = null;
    hasMoreData = true;

  }
}
