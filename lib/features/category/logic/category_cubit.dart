import 'package:bloc/bloc.dart';
import 'package:shaghalni/features/category/logic/category_state.dart';


class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(CategoryState.initial());
}
