import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shaghalni/core/repositories/category_repository.dart';
import 'package:shaghalni/features/add_job/logic/cubit/add_job_state.dart';

class AddJobCubit extends Cubit<AddJobState> {

  final CategoryRepository _categoryRepository ;


  AddJobCubit(this._categoryRepository) : super(const AddJobState.initial());

  Future<void> getCategories() async {
    try {
      emit(const AddJobState.categoryLoading());
      var categoryList = await CategoryRepository().getCategories();
      emit(AddJobState.categorySuccess(categoryList));
    } catch (e) {
      emit(AddJobState.categoryFailure(error: e.toString()));
    }
  }
}
