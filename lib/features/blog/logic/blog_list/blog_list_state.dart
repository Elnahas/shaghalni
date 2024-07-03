import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shaghalni/core/data/models/blog_model.dart';

part 'blog_list_state.freezed.dart';

@freezed
class BlogListState with _$BlogListState {

  const factory BlogListState.initial() = _Initial;

  const factory BlogListState.blogListLoading() = BlogListLoading;
  const factory BlogListState.blogListSuccess(List<BlogModel> blogList) = BlogListSuccess;
  const factory BlogListState.blogListFailure(String error) = BlogListFailure;
}
