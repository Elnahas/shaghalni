import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shaghalni/features/auth/login/logic/login_state.dart';

import '../../../../core/repositories/auth_repository.dart';

class LoginCubit extends Cubit<LoginState> {

  final AuthRepository _authRepository;

  LoginCubit(this._authRepository) : super(const LoginState.initial());

  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  TextEditingController phoneNumberController = TextEditingController();
  String codeCountry = "+20";

  String get phoneNumber => codeCountry + phoneNumberController.text;

  void setPhoneNumber(String phoneNumber) {
    _authRepository.savePhoneNumber(phoneNumber);
  }

  void sendOtp() async {
    try {
      emit(const LoginLoading());
      await _authRepository.sendOtp(_authRepository.phoneNumber);
      emit(const LoginState.loginSuccess("OTP sent successfully"));
    } catch (e) {
      emit(LoginState.loginFailure(error: e.toString()));
    }
  }
}
