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
  String? selectedCategoryId ;

  //search
  final TextEditingController searchTextEditingController = TextEditingController();

    bool _allFetched = false;
  bool _isLoading = false;
  List<JobModel> _data = [];

    bool noMoreData = false;
  DocumentSnapshot? _lastDocument;

  JobsListCubit(this._jobRepository, this._categoryRepository)
      : super(JobsListState.initial());



 void fetchJobs() async {
    emit(JobsListLoading());
    try {
      final result = await _jobRepository.fetchJobs();
      final newJobs = result['data'] as List<JobModel>;
      _lastDocument = result['lastDocument'] as DocumentSnapshot?;
        noMoreData = newJobs.isEmpty;
      emit(JobsListSuccess( newJobs  , false));
    } catch (e) {
      emit(JobsListFailure( e.toString()));
    }
  }

  void fetchMoreJobs() async {
    if (noMoreData || state is JobsListSuccess && (state as JobsListSuccess).isLoadingMore) {
      return ;
    }
      emit(JobsListSuccess( (state as JobsListSuccess).jobList,  true));
      try {
        final result = await _jobRepository.fetchJobs(lastDocument: _lastDocument);
        final newJobs = result['data'] as List<JobModel>;
        _lastDocument = result['lastDocument'] as DocumentSnapshot?;
           noMoreData = newJobs.isEmpty;
        emit(JobsListSuccess(
           (state as JobsListSuccess).jobList + newJobs, false
        ));
      } catch (e) {
        emit(JobsListFailure( e.toString()));
      }
  }



  Future<void> getCategories(int? categoryIndex) async {
    emit(JobsListState.jobsListLoading());
    try {
      selectedCategoryIndex = categoryIndex ?? 0;

      List<CategoryModel> categories =
          await _categoryRepository.getCategoriesWithAllJobs();
      emit(JobsListState.categorySuccess(categories));
      if (categories.isNotEmpty) {
        getJobs(categoryId: categories[categoryIndex ?? 0].id ,  );
      }
    } catch (e) {
      emit(JobsListState.categoryFailure(e.toString()));
    }
  }

  Future<void> getJobs({String? categoryId  , bool ascending = true , String? cityId , String? searchQuery , int limit = 30 } ) async {
    selectedCategoryId = categoryId;
    emit(JobsListState.jobsListLoading());
    try {
      List<JobModel> jobs;
       jobs = await _jobRepository.getJobs(categoryId: categoryId , ascending: ascending , cityId: cityId , searchQuery: searchQuery , limit: limit);
       if (jobs.isEmpty) {
        emit(JobsListState.noResultsFound());
      }else{
        emit(JobsListState.jobsListSuccess(jobs , false));
      }
      
    } catch (e) {
      emit(JobsListState.jobsListFailure(e.toString()));
    }
  }

  void selectCategory(int index) {
    selectedCategoryIndex = index;
  }
}
