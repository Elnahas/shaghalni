import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:shaghalni/features/auth/signup/data/model/user_model.dart';

class AuthRepository {
  late String _verificationId;
  late String _phoneNumber;
  late String _otpCode;

  // Save phone number
  void savePhoneNumber(String phoneNumber) {
    _phoneNumber = phoneNumber;
  }

  String get phoneNumber => _phoneNumber;

  // Save verification ID
  void saveVerificationId(String verificationId) {
    _verificationId = verificationId;
  }

  String get verificationId => _verificationId;

  // Save OTP code
  void saveOtpCode(String otpCode) {
    _otpCode = otpCode;
  }

  String get otpCode => _otpCode;

  Future<void> sendOtp(String phoneNumber) async {
    Completer<void> completer = Completer<void>();

    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      timeout: const Duration(seconds: 14),
      verificationCompleted: (PhoneAuthCredential credential) async {
        await signInWithCredential(credential);
        completer.complete();
      },
      verificationFailed: (FirebaseAuthException error) {
        completer.completeError(error);
      },
      codeSent: (String verificationId, int? resendToken) {
        saveVerificationId(verificationId);
        completer.complete();
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        saveVerificationId(verificationId);
        completer.complete();
      },
    );

     return completer.future;
  }

  Future<void> verifyOtp(String verificationId, String otpCode) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: verificationId,
      smsCode: otpCode,
    );
    await signInWithCredential(credential);
  }

  Future<void> signInWithCredential(PhoneAuthCredential credential) async {
    await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future<void> signUp(UserModel user) async {
    // Implement sign-up logic, e.g., saving user data to Firestore
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  User get currentUser => FirebaseAuth.instance.currentUser!;
}
