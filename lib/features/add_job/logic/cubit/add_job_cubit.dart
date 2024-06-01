import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:shaghalni/core/models/category_model.dart';
import 'package:shaghalni/core/models/city_model.dart';
import 'package:shaghalni/core/repositories/category_repository.dart';
import 'package:shaghalni/features/add_job/logic/cubit/add_job_state.dart';

import '../../../../core/repositories/city_repository.dart';
import '../../../../core/widgets/select_list_widget.dart';
import '../../ui/widgets/add_job_form.dart';

class AddJobCubit extends Cubit<AddJobState> {
  final CategoryRepository _categoryRepository;
  final CityRepository _cityRepository;
  List<CategoryModel> _categoryList = [];
  List<CityModel> _cityList = [];

  int currentStep = 1;
  int totalSteps = 3;

  int selectedCategoryIndex = -1;
  int selectedCityIndex = -1;

    AddJobCubit(this._categoryRepository, this._cityRepository) : super(AddJobState.initial());


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
          items: _cityList,
          initialSelectedIndex: selectedCityIndex,
          onItemSelected: updateSelectedCityIndex,
          itemBuilder: (city) => city.name,
        ),
        const AddJobForm(),
      ];

  Future<void> getCategoryAndCity() async {
    try {
      emit(const AddJobState.categoryAndCityLoading());
      var categoryList = await _categoryRepository.getCategories();
      var cityList = await _cityRepository.getCities();
      _categoryList = categoryList;
      _cityList = cityList;
      emit(const AddJobState.categoryAndCitySuccess());
    } catch (e) {
      emit(AddJobState.categoryAndCityFailure(error: e.toString()));
    }
  }

  // Move to the next step
  void nextStep() {
  if (currentStep == 1 && selectedCategoryIndex == -1) {
    emit(const AddJobState.categoryAndCityFailure(error: "Please select Category"));
  } else if (currentStep == 2 && selectedCityIndex == -1) {
    emit(const AddJobState.categoryAndCityFailure(error: "Please select City"));
  } else {
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
