import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_state.freezed.dart';


@freezed
class SignupState<T> with _$SignupState<T> {
  const factory SignupState.initial() = _Initial;

  const factory SignupState.signupSuccess() = SignupSuccess;
  const factory SignupState.signupLoading() = SignupLoading;
  const factory SignupState.signupFailure({required String error}) = SignupFailure;

  const factory SignupState.cityLoading() = CityLoading;
  const factory SignupState.citySuccess() = CitySuccess;
  const factory SignupState.cityFailure({required String error}) = CityFailure;

    const factory SignupState.agreementState({required bool isAgreed}) = AgreementState;
}
