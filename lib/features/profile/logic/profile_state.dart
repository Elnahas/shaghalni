import 'package:freezed_annotation/freezed_annotation.dart';

part "profile_state.freezed.dart";

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;

  const factory ProfileState.profileSuccess() = ProfileSuccess;
  const factory ProfileState.profileLoading() = ProfileLoading;
  const factory ProfileState.profileFailure({required String error}) =
      ProfileFailure;

  const factory ProfileState.cityLoading() = CityLoading;
  const factory ProfileState.citySuccess() = CitySuccess;
  const factory ProfileState.cityFailure({required String error}) = CityFailure;
}
