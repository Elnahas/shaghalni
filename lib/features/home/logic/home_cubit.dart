import 'package:bloc/bloc.dart';
import 'package:shaghalni/core/helpers/constants.dart';
import 'package:shaghalni/core/repositories/category_repository.dart';
import 'package:shaghalni/core/repositories/user_repository.dart';
import 'package:shaghalni/features/home/logic/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final CategoryRepository _categoryRepository;
  final UserRepository _userRepository;


  HomeCubit(this._categoryRepository, this._userRepository) : super(HomeState.initial());

  Future<void> getCategoriesAndJobs() async {
    try {
      emit(HomeState.categoriesAndJobsLoading());
      var categoryList = await _categoryRepository.getCategories();
      emit(HomeState.categoriesAndJobsSuccess(categoryList, []));
    } catch (e) {
      emit(HomeState.categoriesAndJobsFailure(e.toString()));
    }
  }

  Future<void> getUser() async {
    try {
      var user = await _userRepository.getUserFromPreferences();
      userModel = user;
    } catch (e) {
    }
  }
}
