import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/data/models/category_model.dart';
import '../../../../core/data/models/city_model.dart';
part 'add_job_state.freezed.dart';

@freezed
class AddJobState<T> with _$AddJobState<T> {
  const factory AddJobState.initial() = _Initial;
  const factory AddJobState.addJobLoading() = AddJobLoading;
  const factory AddJobState.addJobSuccess() = AddJobSuccess;
  const factory AddJobState.addJobFailure({required String error}) =
      AddJobFailure;

  const factory AddJobState.categoryAndCityLoading() = CategoryAndCityLoading;
  const factory AddJobState.categoryAndCitySuccess(
          List<CategoryModel> categoryList, List<CityModel> cityList) =
      CategoryAndCitySuccess;
  const factory AddJobState.categoryAndCityFailure({required String error}) =
      CategoryAndCityFailure;

  const factory AddJobState.updateSteps({required int index}) = UpdateSteps;

  const factory AddJobState.categoryIndexUpdated({required int index}) = CategoryIndexUpdated;
  const factory AddJobState.cityIndexUpdated({required int index}) = CityIndexUpdated;
  const factory AddJobState.stepUpdated({required int index}) = StepUpdated;
}
