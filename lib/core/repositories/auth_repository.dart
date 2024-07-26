import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shaghalni/core/data/models/user_model.dart';

import '../helpers/constants.dart';
import '../helpers/shared_pref_helper.dart';

class AuthRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

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
    try {
      await _firestore
          .collection(FirestoreCollections.users)
          .doc(user.uid)
          .set(user.toJson());
    } catch (e) {
      throw 'Failed to sign up: $e';
    }
  }

  Future<void> signOut() async {
    await SharedPrefHelper.clearAllData();
    await FirebaseAuth.instance.signOut();
  }
}
