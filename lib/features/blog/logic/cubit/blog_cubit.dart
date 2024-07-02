import 'package:bloc/bloc.dart';
import 'package:shaghalni/features/blog/data/repo/blog_repository.dart';
import 'package:shaghalni/features/blog/logic/cubit/blog_state.dart';


class BlogCubit extends Cubit<BlogState> {
  final BlogsRepository _blogsRepository ;
  BlogCubit(this._blogsRepository) : super(BlogState.initial());

  Future<void> getBlogs() async {
    emit(BlogState.blogLoading());
    try {
      final blogs = await _blogsRepository.getBlogs();
      emit(BlogState.blogSuccess(blogs));
    } catch (e) {
      emit(BlogState.blogFailure(e.toString()));
    }
  }
}
