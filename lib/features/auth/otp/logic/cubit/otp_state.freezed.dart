// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OtpState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() otpLoading,
    required TResult Function() otpSuccess,
    required TResult Function() otpNewUser,
    required TResult Function(String error) otpFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? otpLoading,
    TResult? Function()? otpSuccess,
    TResult? Function()? otpNewUser,
    TResult? Function(String error)? otpFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? otpLoading,
    TResult Function()? otpSuccess,
    TResult Function()? otpNewUser,
    TResult Function(String error)? otpFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(OtpLoading<T> value) otpLoading,
    required TResult Function(OtpSuccess<T> value) otpSuccess,
    required TResult Function(OtpNewUser<T> value) otpNewUser,
    required TResult Function(OtpFailure<T> value) otpFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(OtpLoading<T> value)? otpLoading,
    TResult? Function(OtpSuccess<T> value)? otpSuccess,
    TResult? Function(OtpNewUser<T> value)? otpNewUser,
    TResult? Function(OtpFailure<T> value)? otpFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(OtpLoading<T> value)? otpLoading,
    TResult Function(OtpSuccess<T> value)? otpSuccess,
    TResult Function(OtpNewUser<T> value)? otpNewUser,
    TResult Function(OtpFailure<T> value)? otpFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpStateCopyWith<T, $Res> {
  factory $OtpStateCopyWith(
          OtpState<T> value, $Res Function(OtpState<T>) then) =
      _$OtpStateCopyWithImpl<T, $Res, OtpState<T>>;
}

/// @nodoc
class _$OtpStateCopyWithImpl<T, $Res, $Val extends OtpState<T>>
    implements $OtpStateCopyWith<T, $Res> {
  _$OtpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$OtpStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'OtpState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() otpLoading,
    required TResult Function() otpSuccess,
    required TResult Function() otpNewUser,
    required TResult Function(String error) otpFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? otpLoading,
    TResult? Function()? otpSuccess,
    TResult? Function()? otpNewUser,
    TResult? Function(String error)? otpFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? otpLoading,
    TResult Function()? otpSuccess,
    TResult Function()? otpNewUser,
    TResult Function(String error)? otpFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(OtpLoading<T> value) otpLoading,
    required TResult Function(OtpSuccess<T> value) otpSuccess,
    required TResult Function(OtpNewUser<T> value) otpNewUser,
    required TResult Function(OtpFailure<T> value) otpFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(OtpLoading<T> value)? otpLoading,
    TResult? Function(OtpSuccess<T> value)? otpSuccess,
    TResult? Function(OtpNewUser<T> value)? otpNewUser,
    TResult? Function(OtpFailure<T> value)? otpFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(OtpLoading<T> value)? otpLoading,
    TResult Function(OtpSuccess<T> value)? otpSuccess,
    TResult Function(OtpNewUser<T> value)? otpNewUser,
    TResult Function(OtpFailure<T> value)? otpFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements OtpState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$OtpLoadingImplCopyWith<T, $Res> {
  factory _$$OtpLoadingImplCopyWith(
          _$OtpLoadingImpl<T> value, $Res Function(_$OtpLoadingImpl<T>) then) =
      __$$OtpLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$OtpLoadingImplCopyWithImpl<T, $Res>
    extends _$OtpStateCopyWithImpl<T, $Res, _$OtpLoadingImpl<T>>
    implements _$$OtpLoadingImplCopyWith<T, $Res> {
  __$$OtpLoadingImplCopyWithImpl(
      _$OtpLoadingImpl<T> _value, $Res Function(_$OtpLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OtpLoadingImpl<T> implements OtpLoading<T> {
  const _$OtpLoadingImpl();

  @override
  String toString() {
    return 'OtpState<$T>.otpLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OtpLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() otpLoading,
    required TResult Function() otpSuccess,
    required TResult Function() otpNewUser,
    required TResult Function(String error) otpFailure,
  }) {
    return otpLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? otpLoading,
    TResult? Function()? otpSuccess,
    TResult? Function()? otpNewUser,
    TResult? Function(String error)? otpFailure,
  }) {
    return otpLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? otpLoading,
    TResult Function()? otpSuccess,
    TResult Function()? otpNewUser,
    TResult Function(String error)? otpFailure,
    required TResult orElse(),
  }) {
    if (otpLoading != null) {
      return otpLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(OtpLoading<T> value) otpLoading,
    required TResult Function(OtpSuccess<T> value) otpSuccess,
    required TResult Function(OtpNewUser<T> value) otpNewUser,
    required TResult Function(OtpFailure<T> value) otpFailure,
  }) {
    return otpLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(OtpLoading<T> value)? otpLoading,
    TResult? Function(OtpSuccess<T> value)? otpSuccess,
    TResult? Function(OtpNewUser<T> value)? otpNewUser,
    TResult? Function(OtpFailure<T> value)? otpFailure,
  }) {
    return otpLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(OtpLoading<T> value)? otpLoading,
    TResult Function(OtpSuccess<T> value)? otpSuccess,
    TResult Function(OtpNewUser<T> value)? otpNewUser,
    TResult Function(OtpFailure<T> value)? otpFailure,
    required TResult orElse(),
  }) {
    if (otpLoading != null) {
      return otpLoading(this);
    }
    return orElse();
  }
}

abstract class OtpLoading<T> implements OtpState<T> {
  const factory OtpLoading() = _$OtpLoadingImpl<T>;
}

/// @nodoc
abstract class _$$OtpSuccessImplCopyWith<T, $Res> {
  factory _$$OtpSuccessImplCopyWith(
          _$OtpSuccessImpl<T> value, $Res Function(_$OtpSuccessImpl<T>) then) =
      __$$OtpSuccessImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$OtpSuccessImplCopyWithImpl<T, $Res>
    extends _$OtpStateCopyWithImpl<T, $Res, _$OtpSuccessImpl<T>>
    implements _$$OtpSuccessImplCopyWith<T, $Res> {
  __$$OtpSuccessImplCopyWithImpl(
      _$OtpSuccessImpl<T> _value, $Res Function(_$OtpSuccessImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OtpSuccessImpl<T> implements OtpSuccess<T> {
  const _$OtpSuccessImpl();

  @override
  String toString() {
    return 'OtpState<$T>.otpSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OtpSuccessImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() otpLoading,
    required TResult Function() otpSuccess,
    required TResult Function() otpNewUser,
    required TResult Function(String error) otpFailure,
  }) {
    return otpSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? otpLoading,
    TResult? Function()? otpSuccess,
    TResult? Function()? otpNewUser,
    TResult? Function(String error)? otpFailure,
  }) {
    return otpSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? otpLoading,
    TResult Function()? otpSuccess,
    TResult Function()? otpNewUser,
    TResult Function(String error)? otpFailure,
    required TResult orElse(),
  }) {
    if (otpSuccess != null) {
      return otpSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(OtpLoading<T> value) otpLoading,
    required TResult Function(OtpSuccess<T> value) otpSuccess,
    required TResult Function(OtpNewUser<T> value) otpNewUser,
    required TResult Function(OtpFailure<T> value) otpFailure,
  }) {
    return otpSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(OtpLoading<T> value)? otpLoading,
    TResult? Function(OtpSuccess<T> value)? otpSuccess,
    TResult? Function(OtpNewUser<T> value)? otpNewUser,
    TResult? Function(OtpFailure<T> value)? otpFailure,
  }) {
    return otpSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(OtpLoading<T> value)? otpLoading,
    TResult Function(OtpSuccess<T> value)? otpSuccess,
    TResult Function(OtpNewUser<T> value)? otpNewUser,
    TResult Function(OtpFailure<T> value)? otpFailure,
    required TResult orElse(),
  }) {
    if (otpSuccess != null) {
      return otpSuccess(this);
    }
    return orElse();
  }
}

abstract class OtpSuccess<T> implements OtpState<T> {
  const factory OtpSuccess() = _$OtpSuccessImpl<T>;
}

/// @nodoc
abstract class _$$OtpNewUserImplCopyWith<T, $Res> {
  factory _$$OtpNewUserImplCopyWith(
          _$OtpNewUserImpl<T> value, $Res Function(_$OtpNewUserImpl<T>) then) =
      __$$OtpNewUserImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$OtpNewUserImplCopyWithImpl<T, $Res>
    extends _$OtpStateCopyWithImpl<T, $Res, _$OtpNewUserImpl<T>>
    implements _$$OtpNewUserImplCopyWith<T, $Res> {
  __$$OtpNewUserImplCopyWithImpl(
      _$OtpNewUserImpl<T> _value, $Res Function(_$OtpNewUserImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OtpNewUserImpl<T> implements OtpNewUser<T> {
  const _$OtpNewUserImpl();

  @override
  String toString() {
    return 'OtpState<$T>.otpNewUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OtpNewUserImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() otpLoading,
    required TResult Function() otpSuccess,
    required TResult Function() otpNewUser,
    required TResult Function(String error) otpFailure,
  }) {
    return otpNewUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? otpLoading,
    TResult? Function()? otpSuccess,
    TResult? Function()? otpNewUser,
    TResult? Function(String error)? otpFailure,
  }) {
    return otpNewUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? otpLoading,
    TResult Function()? otpSuccess,
    TResult Function()? otpNewUser,
    TResult Function(String error)? otpFailure,
    required TResult orElse(),
  }) {
    if (otpNewUser != null) {
      return otpNewUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(OtpLoading<T> value) otpLoading,
    required TResult Function(OtpSuccess<T> value) otpSuccess,
    required TResult Function(OtpNewUser<T> value) otpNewUser,
    required TResult Function(OtpFailure<T> value) otpFailure,
  }) {
    return otpNewUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(OtpLoading<T> value)? otpLoading,
    TResult? Function(OtpSuccess<T> value)? otpSuccess,
    TResult? Function(OtpNewUser<T> value)? otpNewUser,
    TResult? Function(OtpFailure<T> value)? otpFailure,
  }) {
    return otpNewUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(OtpLoading<T> value)? otpLoading,
    TResult Function(OtpSuccess<T> value)? otpSuccess,
    TResult Function(OtpNewUser<T> value)? otpNewUser,
    TResult Function(OtpFailure<T> value)? otpFailure,
    required TResult orElse(),
  }) {
    if (otpNewUser != null) {
      return otpNewUser(this);
    }
    return orElse();
  }
}

abstract class OtpNewUser<T> implements OtpState<T> {
  const factory OtpNewUser() = _$OtpNewUserImpl<T>;
}

/// @nodoc
abstract class _$$OtpFailureImplCopyWith<T, $Res> {
  factory _$$OtpFailureImplCopyWith(
          _$OtpFailureImpl<T> value, $Res Function(_$OtpFailureImpl<T>) then) =
      __$$OtpFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$OtpFailureImplCopyWithImpl<T, $Res>
    extends _$OtpStateCopyWithImpl<T, $Res, _$OtpFailureImpl<T>>
    implements _$$OtpFailureImplCopyWith<T, $Res> {
  __$$OtpFailureImplCopyWithImpl(
      _$OtpFailureImpl<T> _value, $Res Function(_$OtpFailureImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$OtpFailureImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpFailureImpl<T> implements OtpFailure<T> {
  const _$OtpFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'OtpState<$T>.otpFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpFailureImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpFailureImplCopyWith<T, _$OtpFailureImpl<T>> get copyWith =>
      __$$OtpFailureImplCopyWithImpl<T, _$OtpFailureImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() otpLoading,
    required TResult Function() otpSuccess,
    required TResult Function() otpNewUser,
    required TResult Function(String error) otpFailure,
  }) {
    return otpFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? otpLoading,
    TResult? Function()? otpSuccess,
    TResult? Function()? otpNewUser,
    TResult? Function(String error)? otpFailure,
  }) {
    return otpFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? otpLoading,
    TResult Function()? otpSuccess,
    TResult Function()? otpNewUser,
    TResult Function(String error)? otpFailure,
    required TResult orElse(),
  }) {
    if (otpFailure != null) {
      return otpFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(OtpLoading<T> value) otpLoading,
    required TResult Function(OtpSuccess<T> value) otpSuccess,
    required TResult Function(OtpNewUser<T> value) otpNewUser,
    required TResult Function(OtpFailure<T> value) otpFailure,
  }) {
    return otpFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(OtpLoading<T> value)? otpLoading,
    TResult? Function(OtpSuccess<T> value)? otpSuccess,
    TResult? Function(OtpNewUser<T> value)? otpNewUser,
    TResult? Function(OtpFailure<T> value)? otpFailure,
  }) {
    return otpFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(OtpLoading<T> value)? otpLoading,
    TResult Function(OtpSuccess<T> value)? otpSuccess,
    TResult Function(OtpNewUser<T> value)? otpNewUser,
    TResult Function(OtpFailure<T> value)? otpFailure,
    required TResult orElse(),
  }) {
    if (otpFailure != null) {
      return otpFailure(this);
    }
    return orElse();
  }
}

abstract class OtpFailure<T> implements OtpState<T> {
  const factory OtpFailure({required final String error}) = _$OtpFailureImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$OtpFailureImplCopyWith<T, _$OtpFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
