import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/data/models/category_model.dart';
import '../../../../core/data/models/city_model.dart';

part 'job_form_state.freezed.dart';

@freezed
class JobFormState<T> with _$JobFormState<T> {
  const factory JobFormState.initial() = _Initial;
  const factory JobFormState.formLoading() = FormLoading;
  const factory JobFormState.formSuccess() = FormSuccess;
  const factory JobFormState.addJobSuccess() = AddJobSuccess;
  const factory JobFormState.updateJobSuccess() = UpdateJobSuccess;
  const factory JobFormState.formFailure({required String error}) = FormFailure;

  const factory JobFormState.categoryAndCityLoading() = CategoryAndCityLoading;
  const factory JobFormState.categoryAndCitySuccess(
      List<CategoryModel> categoryList, List<CityModel> cityList) = CategoryAndCitySuccess;
  const factory JobFormState.categoryAndCityFailure({required String error}) = CategoryAndCityFailure;

  const factory JobFormState.updateSteps({required int index}) = UpdateSteps;

  const factory JobFormState.categoryIndexUpdated({required int index}) = CategoryIndexUpdated;
  const factory JobFormState.cityIndexUpdated({required int index}) = CityIndexUpdated;
  const factory JobFormState.stepUpdated({required int index}) = StepUpdated;
}