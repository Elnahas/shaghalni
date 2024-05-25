import 'package:bloc/bloc.dart';
import 'package:shaghalni/features/auth/login/logic/cubit/login_state.dart';

import '../../../auth_repository.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepository _authRepository;

  LoginCubit(this._authRepository) : super(const LoginState.initial());

  void setPhoneNumber(String phoneNumber) {
    _authRepository.savePhoneNumber(phoneNumber);
  }

  Future<void> sendOtp() async {
    try {
      emit(const LoginLoading());
      await _authRepository.sendOtp(_authRepository.phoneNumber);
      emit(const LoginState.loginSuccess("OTP sent successfully"));
    } catch (e) {
      emit(LoginState.loginFailure(error: e.toString()));
    }
  }
}
