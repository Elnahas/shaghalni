import 'package:freezed_annotation/freezed_annotation.dart';

part  'otp_state.freezed.dart';

@freezed
class OtpState<T> with _$OtpState<T> {
  const factory OtpState.initial() = _Initial;
  
  const factory OtpState.otpLoading() = OtpLoading;
  const factory OtpState.otpSuccess() = OtpSuccess;
  const factory OtpState.otpNewUser() = OtpNewUser;
  const factory OtpState.otpFailure({required String error}) = OtpFailure;

}
