import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shaghalni/core/data/models/category_model.dart';

part  'category_state.freezed.dart';

@freezed
class CategoryState with _$CategoryState {

  const factory CategoryState.initial() = _Initial;

  const factory CategoryState.categoryLoading() = CategoryLoading;
  const factory CategoryState.categorySuccess(List<CategoryModel> categoryList) = CategorySuccess;
  const factory CategoryState.categoryFailure(String error) = CategoryFailure;
}
