import 'package:bloc/bloc.dart';
import 'package:shaghalni/core/repositories/category_repository.dart';
import 'package:shaghalni/features/category/logic/category_state.dart';


class CategoryCubit extends Cubit<CategoryState> {

  final CategoryRepository _categoryRepository;

  bool isGridView = true;

  CategoryCubit(this._categoryRepository) : super(CategoryState.initial());


  Future<void> getCategories() async {
    try {
      emit(CategoryState.categoryLoading());
      var categoryList = await _categoryRepository.getCategoriesWithAllJobs();
      emit(CategoryState.categorySuccess(categoryList));
    } catch (e) {
      emit(CategoryState.categoryFailure(e.toString()));
    }
  }

  
}
