import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:shaghalni/core/data/models/category_model.dart';
import 'package:shaghalni/core/data/models/city_model.dart';
import 'package:shaghalni/core/data/models/user_model.dart';
import 'package:shaghalni/core/repositories/category_repository.dart';
import 'package:shaghalni/core/repositories/user_repository.dart';
import 'package:shaghalni/features/add_job/data/repo/add_job_repository.dart';
import 'package:shaghalni/features/add_job/logic/cubit/add_job_state.dart';
import '../../../../core/data/models/job_model.dart';
import '../../../../core/repositories/city_repository.dart';
import '../../../../core/widgets/select_list_widget.dart';
import '../../ui/widgets/add_job_form.dart';

class AddJobCubit extends Cubit<AddJobState> {
  // Repos
  final CategoryRepository _categoryRepository;
  final CityRepository _cityRepository;
  final AddJobRepository _addJobRepository;
  final UserRepository _userRepository;

  // Lists
  List<CategoryModel> _categoryList = [];
  List<CityModel> _cityList = [];

  //city and category
  CategoryModel get category => _categoryList[selectedCategoryIndex];
  CityModel get city => _cityList[selectedCityIndex];

  // Steps
  int currentStep = 1;
  int totalSteps = 3;
  int selectedCategoryIndex = -1;
  int selectedCityIndex = -1;

  // Add Job Form
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController jobTitleController = TextEditingController();
  TextEditingController jobDescriptionController = TextEditingController();
  TextEditingController jobSalaryController = TextEditingController();
  bool isHideSalary = false;

  // Steps Widgets List
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

  AddJobCubit(this._categoryRepository, this._cityRepository,
      this._addJobRepository, this._userRepository)
      : super(const AddJobState.initial());

  // add Job
  void addJob(JobModel job) async {
    try {
      if (formKey.currentState!.validate()) {
        emit(const AddJobState.addJobLoading());

        UserModel? user = await _userRepository.getUserFromPreferences();

        job.postedBy = PostedBy(
            phoneNumber: user.phoneNumber,
            userId: user.uid,
            userName: user.fullName);

        await _addJobRepository.addJob(job);

        emit(const AddJobState.addJobSuccess());
      }
    } catch (e) {
      emit(AddJobState.addJobFailure(error: e.toString()));
    }
  }

  // Get Category and City
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
    if (_categoryList.isNotEmpty && _cityList.isNotEmpty) {
      if (currentStep == 1 && selectedCategoryIndex == -1) {
        emit(const AddJobState.categoryAndCityFailure(
            error: "Please select Category"));
      } else if (currentStep == 2 && selectedCityIndex == -1) {
        emit(const AddJobState.categoryAndCityFailure(
            error: "Please select City"));
      } else {
        currentStep++;
        emit(AddJobState.updateSteps(index: currentStep));
      }
    }
  }

  // Move to the previous step
  void previousStep() {
    if (currentStep > 1) {
      currentStep--;
      emit(AddJobState.updateSteps(index: currentStep));
    }
  }

  // Update selected index for category
  void updateSelectedCategoryIndex(int index) {
    selectedCategoryIndex = index;
    emit(AddJobState.updateSteps(index: currentStep));
  }

  // Update selected index for city
  void updateSelectedCityIndex(int index) {
    selectedCityIndex = index;
    emit(AddJobState.updateSteps(index: currentStep));
  }

  // Get current widget
  Widget getCurrentWidget() {
    return steps[currentStep - 1];
  }
}
