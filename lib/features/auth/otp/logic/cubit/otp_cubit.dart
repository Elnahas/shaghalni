import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shaghalni/features/auth/otp/logic/cubit/otp_state.dart';

import '../../../../../core/repositories/auth_repository.dart';

class OtpCubit extends Cubit<OtpState> {
  final AuthRepository _authRepository;
  OtpCubit(this._authRepository) : super(const OtpState.initial());

  void setOtpCode(String otpCode) {
    _authRepository.saveOtpCode(otpCode);
  }

  Future<void> verifyOtp() async {
    try {
      debugPrint("verifyOtp");
      emit(const OtpLoading());
      await _authRepository.verifyOtp(
        _authRepository.verificationId,
        _authRepository.otpCode,
      );


      emit(const OtpNewUser());

      // if (_authRepository.currentUser != null) { // !! Here we should check if the user is new or not form firebase firestore this fun with get from AuthRepository
      //   emit(const OtpSuccess());
      // } else {
        
      // }
    } catch (e) {
       debugPrint("OtpFailure ${e.toString()}");
      emit(OtpFailure(error: e.toString()));
    }
  }
}
