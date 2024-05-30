import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_job_state.freezed.dart';


@freezed
class AddJobState<T> with _$AddJobState<T> {
  
  const factory AddJobState.initial() = _Initial;
  const factory AddJobState.addJobLoading() = AddJobLoading;
  const factory AddJobState.addJobSuccess(T data) = AddJobSuccess<T>;
  const factory AddJobState.addJobFailure({required String error})  = AddJobFailure;

  const factory AddJobState.categoryLoading() = CategoryLoading;
  const factory AddJobState.categorySuccess(T data) = CategorySuccess<T>;
  const factory AddJobState.categoryFailure({required String error}) = CategoryFailure;

}
