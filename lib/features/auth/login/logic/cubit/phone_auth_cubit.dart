import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'phone_auth_state.dart';

class PhoneAuthCubit extends Cubit<PhoneAuthState> {
  PhoneAuthCubit() : super(PhoneAuthInitial());

  late String verificationId;
  late String phoneNumber;
  late String otpCode;

  Future<void> submitPhoneNumber() async {
    emit(PhoneAuthLoadingState());

    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      timeout: const Duration(seconds: 14),
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
      codeSent: codeSent,
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
    );
  }

  void verificationCompleted(PhoneAuthCredential credential) async {
    debugPrint('verificationCompleted');
    await signIn(credential);
  }

  void verificationFailed(FirebaseAuthException error) {
    debugPrint('verificationFailed : ${error.toString()}');
    emit(PhoneAuthFailureState(errorMsg: error.toString()));
  }

  void codeSent(String verificationId, int? resendToken) {
    debugPrint('codeSent');
    this.verificationId = verificationId;
    emit(PhoneAuthSubmittedState());
  }

  void codeAutoRetrievalTimeout(String verificationId) {
    debugPrint('codeAutoRetrievalTimeout');
  }

  Future<void> submitOTP() async {
    
    emit(PhoneAuthLoadingState());

    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: otpCode);

    await signIn(credential);
  }

  Future<void> signIn(PhoneAuthCredential credential) async {
    try {
      await FirebaseAuth.instance.signInWithCredential(credential);
      emit(PhoneAuthOTPVerifiedState());
    } catch (error) {
      emit(PhoneAuthFailureState(errorMsg: error.toString()));
    }
  }

  Future<void> logOut() async {
    await FirebaseAuth.instance.signOut();
  }

  User getLoggedInUser() {
    User firebaseUser = FirebaseAuth.instance.currentUser!;
    return firebaseUser;
  }
}
