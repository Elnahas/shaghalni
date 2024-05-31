import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:shaghalni/core/models/category_model.dart';
import 'package:shaghalni/core/repositories/category_repository.dart';
import 'package:shaghalni/features/add_job/logic/cubit/add_job_state.dart';

import '../../../../core/widgets/select_list_widget.dart';
import '../../ui/widgets/add_job_form.dart';

class AddJobCubit extends Cubit<AddJobState> {
  final CategoryRepository _categoryRepository;
  List<CategoryModel> _categoryList = [];

  int currentStep = 1;
  int totalSteps = 3;

  int selectedCategoryIndex = 0;
  int selectedCityIndex = 0;

  List<Widget> get steps => [
        SelectListWidget(
          title: "Select Category",
          items: _categoryList,
          initialSelectedIndex: selectedCategoryIndex,
          onItemSelected: updateSelectedCategoryIndex,
          itemBuilder: (category) => category.name,
        ),
        SelectListWidget(
          title: "Select City",
          items: _categoryList,
          initialSelectedIndex: selectedCityIndex,
          onItemSelected: updateSelectedCityIndex,
          itemBuilder: (category) => category.id,
        ),
        const AddJobForm(),
      ];

  AddJobCubit(this._categoryRepository) : super(const AddJobState.initial());

  Future<void> getCategories() async {
    try {
      emit(const AddJobState.categoryLoading());
      var categoryList = await CategoryRepository().getCategories();
      _categoryList = categoryList;

      emit(AddJobState.categorySuccess(categoryList));
    } catch (e) {
      emit(AddJobState.categoryFailure(error: e.toString()));
    }
  }

  // Move to the next step
  void nextStep() {
    if (currentStep < totalSteps) {
      currentStep++;
      emit(AddJobState.updateSteps(index: currentStep));
    }
  }

  // Move to the previous step
  void previousStep() {
    if (currentStep > 1) {
      currentStep--;
      emit(AddJobState.updateSteps(index: currentStep));
    }
  }

  void updateSelectedCategoryIndex(int index) {
    selectedCategoryIndex = index;
    emit(AddJobState.updateSteps(index: currentStep));
  }

  void updateSelectedCityIndex(int index) {
    selectedCityIndex = index;
    emit(AddJobState.updateSteps(index: currentStep));
  }

  Widget getCurrentWidget() {
    return steps[currentStep - 1];
  }
}
