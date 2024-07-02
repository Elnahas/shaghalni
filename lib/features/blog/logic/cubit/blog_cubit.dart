import 'package:bloc/bloc.dart';
import 'package:shaghalni/features/blog/logic/cubit/blog_state.dart';


class BlogCubit extends Cubit<BlogState> {
  BlogCubit() : super(BlogState.initial());
}
