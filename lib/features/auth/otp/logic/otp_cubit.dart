import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shaghalni/core/helpers/constants.dart';
import 'package:shaghalni/features/auth/otp/logic/otp_state.dart';

import '../../../../core/repositories/auth_repository.dart';
import '../../../../core/repositories/user_repository.dart';

class OtpCubit extends Cubit<OtpState> {
  final AuthRepository _authRepository;
  final UserRepository _userRepository;

  OtpCubit(this._authRepository, this._userRepository)
      : super(const OtpState.initial());

  void setOtpCode(String otpCode) {
    _authRepository.saveOtpCode(otpCode);
  }

  Future<void> verifyOtp() async {
    try {
      
      emit(const OtpLoading());

      await _authRepository.verifyOtp(
        _authRepository.verificationId,
        _authRepository.otpCode,
      );

      var user = await _userRepository.getUser();

      if (user != null) {
        await _userRepository.saveUserToPreferences(user);
        userModel = user;
        emit(OtpState.otpSuccess(data: user));
      } else {
        emit(const OtpNewUser());
      }
    } catch (e) {
      debugPrint("OtpFailure ${e.toString()}");
      emit(OtpFailure(error: e.toString()));
    }
  }
}
