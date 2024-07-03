import 'package:bloc/bloc.dart';
import 'package:shaghalni/core/repositories/blog_repository.dart';
import 'package:shaghalni/features/blog/logic/blog_list/blog_list_state.dart';


class BlogListCubit extends Cubit<BlogListState> {
  final BlogsRepository _blogsRepository ;
  BlogListCubit(this._blogsRepository) : super(BlogListState.initial());

  Future<void> getBlogs() async {
    emit(BlogListState.blogListLoading());
    
    try {
      //await _blogsRepository.addSampleBlogs();
      final blogs = await _blogsRepository.getBlogs();
      emit(BlogListState.blogListSuccess(blogs));
    } catch (e) {
      emit(BlogListState.blogListFailure(e.toString()));
    }
  }



  
}
