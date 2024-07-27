import 'package:bloc/bloc.dart';
import 'package:shaghalni/core/repositories/auth_repository.dart';
import 'package:shaghalni/features/setting/logic/setting_state.dart';

class SettingCubit extends Cubit<SettingState> {
  final AuthRepository _authRepository;
  SettingCubit(this._authRepository) : super(SettingState.initial());

  //logout
  Future<void> logout() async {
    try {
      emit(SettingState.logOutLoading());
      await _authRepository.signOut();
      emit(SettingState.logOutSuccess());
    } catch (e) {
      emit(SettingState.logOutFailure(e.toString()));
    }
  }

}
