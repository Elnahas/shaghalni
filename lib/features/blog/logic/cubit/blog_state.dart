import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shaghalni/features/blog/data/model/blog_model.dart';

part 'blog_state.freezed.dart';

@freezed
class BlogState with _$BlogState {

  const factory BlogState.initial() = _Initial;

  const factory BlogState.blogLoading() = BlogLoading;
  const factory BlogState.blogSuccess(List<BlogModel> blogList) = BlogSuccess;
  const factory BlogState.blogFailure(String error) = BlogFailure;
}
