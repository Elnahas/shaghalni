import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:shaghalni/core/data/enum/job_type.dart';
import 'package:shaghalni/core/data/models/category_model.dart';
import 'package:shaghalni/core/data/models/city_model.dart';
import 'package:shaghalni/core/repositories/category_repository.dart';
import 'package:shaghalni/core/repositories/job_repository.dart';
import 'package:shaghalni/features/job_form/logic/cubit/job_form_state.dart';
import '../../../../core/data/enum/gender.dart';
import '../../../../core/data/models/job_model.dart';
import '../../../../core/repositories/city_repository.dart';
import '../../../../core/widgets/select_list_widget.dart';
import '../../ui/widgets/job_form.dart';

class JobFormCubit extends Cubit<JobFormState> {
  JobModel? currentJob;
  bool isEditing = false;
  String jobId = "";
  // Repos
  final CategoryRepository _categoryRepository;
  final CityRepository _cityRepository;
  final JobRepository _addJobRepository;

  // Lists
  List<CategoryModel> _categoryList = [];
  List<CityModel> _cityList = [];
  // getList
  List<CategoryModel> get getCategoryList => _categoryList;
  List<CityModel> get getCityList => _cityList;

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
  Gender? selectedGender;
  JobType? selectedJobType;
  int minExperience = 0;
  int maxExperience = 1;
  //
  PageController pageController = PageController();

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
        const JobForm(),
      ];

  JobFormCubit(
      this._categoryRepository, this._cityRepository, this._addJobRepository)
      : super(const JobFormState.initial());

  // add Job
  void addJob(JobModel job) async {
    try {
      if (formKey.currentState!.validate()) {
        emit(const JobFormState.formLoading());

        await _addJobRepository.addJob(job);

        emit(const JobFormState.addJobSuccess());
      }
    } catch (e) {
      emit(JobFormState.formFailure(error: e.toString()));
    }
  }

  void saveJob({bool isEditing = false, JobModel? jobModel}) async {
    try {
      if (formKey.currentState!.validate()) {

        emit(const JobFormState.formLoading());

        if (isEditing) {
          await _addJobRepository.updateJob(jobModel! , jobId);
          emit(const JobFormState.addJobSuccess());
        } else {
          await _addJobRepository.addJob(jobModel!);
          emit(const JobFormState.addJobSuccess());
        }
      }
    } catch (e) {
      emit(JobFormState.formFailure(error: e.toString()));
    }
  }

  // Get Category and City
  Future<void> getCategoryAndCity(JobModel? job) async {
    try {
      emit(const JobFormState.categoryAndCityLoading());
      var categoryList = await _categoryRepository.getCategories();
      var cityList = await _cityRepository.getCities();
      _categoryList = categoryList;
      _cityList = cityList;
      emit(JobFormState.categoryAndCitySuccess(categoryList, cityList));
      initializeWithJob(job);
    } catch (e) {
      emit(JobFormState.categoryAndCityFailure(error: e.toString()));
    }
  }

  // Move to the next step
  void nextStep() {
    if (_categoryList.isNotEmpty && _cityList.isNotEmpty) {
      if (currentStep == 1 && selectedCategoryIndex == -1) {
        emit(JobFormState.initial());
        emit(const JobFormState.categoryAndCityFailure(
            error: "Please select Category"));
      } else if (currentStep == 2 && selectedCityIndex == -1) {
        emit(JobFormState.initial());
        emit(const JobFormState.categoryAndCityFailure(
            error: "Please select City"));
      } else {
        currentStep++;
        pageController.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn);
        emit(JobFormState.updateSteps(index: currentStep));
      }
    }
  }

  // Move to the previous step
  void previousStep() {
    if (currentStep > 1) {
      currentStep--;
      pageController.previousPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.fastOutSlowIn);
      emit(JobFormState.updateSteps(index: currentStep));
    }
  }

  // Update selected index for category
  void updateSelectedCategoryIndex(int index) {
    selectedCategoryIndex = index;
    emit(CategoryIndexUpdated(index: selectedCategoryIndex));
  }

  // Update selected index for city
  void updateSelectedCityIndex(int index) {
    selectedCityIndex = index;
    emit(CityIndexUpdated(index: selectedCityIndex));
  }

  // Get current widget
  Widget getCurrentWidget() {
    return steps[currentStep - 1];
  }

  void updateCurrentStep() {
    //currentStep = step;
    emit(StepUpdated(index: currentStep));
  }

  void initializeWithJob(JobModel? job) {
    
    if (job != null) {
      isEditing = true;
      currentJob = job;
      jobId = job.id!;
      jobTitleController.text = job.title;
      jobDescriptionController.text = job.description ;
      jobSalaryController.text = job.salary.toString() ;
      isHideSalary = job.isHideSalary;
      selectedGender = job.gender;
      selectedJobType = job.jobType;
      minExperience = job.experienceRange!.minExperience ;
      maxExperience = job.experienceRange!.maxExperience ;
      selectedCategoryIndex = _categoryList
          .indexWhere((category) => category.id == job.category.id);
      selectedCityIndex =
          _cityList.indexWhere((city) => city.id == job.city.id);
    }
  }
}
