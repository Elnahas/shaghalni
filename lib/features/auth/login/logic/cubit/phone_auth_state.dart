part of 'phone_auth_cubit.dart';

@immutable
sealed class PhoneAuthState {}

final class PhoneAuthInitial extends PhoneAuthState {}

class PhoneAuthLoadingState extends PhoneAuthState {}

class PhoneAuthFailureState extends PhoneAuthState {
  final String errorMsg;

  PhoneAuthFailureState({required this.errorMsg});
}

class PhoneAuthSubmittedState extends PhoneAuthState {}

class PhoneAuthOTPVerifiedState extends PhoneAuthState {}
