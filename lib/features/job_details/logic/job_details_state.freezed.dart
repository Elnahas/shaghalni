// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$JobDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() jobDetailsLoading,
    required TResult Function(JobModel jobModel) jobDetailsSuccess,
    required TResult Function(String error) jobDetailsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? jobDetailsLoading,
    TResult? Function(JobModel jobModel)? jobDetailsSuccess,
    TResult? Function(String error)? jobDetailsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? jobDetailsLoading,
    TResult Function(JobModel jobModel)? jobDetailsSuccess,
    TResult Function(String error)? jobDetailsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(JobDetailsLoading value) jobDetailsLoading,
    required TResult Function(JobDetailsSuccess value) jobDetailsSuccess,
    required TResult Function(JobDetailsFailure value) jobDetailsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(JobDetailsLoading value)? jobDetailsLoading,
    TResult? Function(JobDetailsSuccess value)? jobDetailsSuccess,
    TResult? Function(JobDetailsFailure value)? jobDetailsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(JobDetailsLoading value)? jobDetailsLoading,
    TResult Function(JobDetailsSuccess value)? jobDetailsSuccess,
    TResult Function(JobDetailsFailure value)? jobDetailsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobDetailsStateCopyWith<$Res> {
  factory $JobDetailsStateCopyWith(
          JobDetailsState value, $Res Function(JobDetailsState) then) =
      _$JobDetailsStateCopyWithImpl<$Res, JobDetailsState>;
}

/// @nodoc
class _$JobDetailsStateCopyWithImpl<$Res, $Val extends JobDetailsState>
    implements $JobDetailsStateCopyWith<$Res> {
  _$JobDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$JobDetailsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'JobDetailsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() jobDetailsLoading,
    required TResult Function(JobModel jobModel) jobDetailsSuccess,
    required TResult Function(String error) jobDetailsFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? jobDetailsLoading,
    TResult? Function(JobModel jobModel)? jobDetailsSuccess,
    TResult? Function(String error)? jobDetailsFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? jobDetailsLoading,
    TResult Function(JobModel jobModel)? jobDetailsSuccess,
    TResult Function(String error)? jobDetailsFailure,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(JobDetailsLoading value) jobDetailsLoading,
    required TResult Function(JobDetailsSuccess value) jobDetailsSuccess,
    required TResult Function(JobDetailsFailure value) jobDetailsFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(JobDetailsLoading value)? jobDetailsLoading,
    TResult? Function(JobDetailsSuccess value)? jobDetailsSuccess,
    TResult? Function(JobDetailsFailure value)? jobDetailsFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(JobDetailsLoading value)? jobDetailsLoading,
    TResult Function(JobDetailsSuccess value)? jobDetailsSuccess,
    TResult Function(JobDetailsFailure value)? jobDetailsFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements JobDetailsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$JobDetailsLoadingImplCopyWith<$Res> {
  factory _$$JobDetailsLoadingImplCopyWith(_$JobDetailsLoadingImpl value,
          $Res Function(_$JobDetailsLoadingImpl) then) =
      __$$JobDetailsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$JobDetailsLoadingImplCopyWithImpl<$Res>
    extends _$JobDetailsStateCopyWithImpl<$Res, _$JobDetailsLoadingImpl>
    implements _$$JobDetailsLoadingImplCopyWith<$Res> {
  __$$JobDetailsLoadingImplCopyWithImpl(_$JobDetailsLoadingImpl _value,
      $Res Function(_$JobDetailsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$JobDetailsLoadingImpl implements JobDetailsLoading {
  const _$JobDetailsLoadingImpl();

  @override
  String toString() {
    return 'JobDetailsState.jobDetailsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$JobDetailsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() jobDetailsLoading,
    required TResult Function(JobModel jobModel) jobDetailsSuccess,
    required TResult Function(String error) jobDetailsFailure,
  }) {
    return jobDetailsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? jobDetailsLoading,
    TResult? Function(JobModel jobModel)? jobDetailsSuccess,
    TResult? Function(String error)? jobDetailsFailure,
  }) {
    return jobDetailsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? jobDetailsLoading,
    TResult Function(JobModel jobModel)? jobDetailsSuccess,
    TResult Function(String error)? jobDetailsFailure,
    required TResult orElse(),
  }) {
    if (jobDetailsLoading != null) {
      return jobDetailsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(JobDetailsLoading value) jobDetailsLoading,
    required TResult Function(JobDetailsSuccess value) jobDetailsSuccess,
    required TResult Function(JobDetailsFailure value) jobDetailsFailure,
  }) {
    return jobDetailsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(JobDetailsLoading value)? jobDetailsLoading,
    TResult? Function(JobDetailsSuccess value)? jobDetailsSuccess,
    TResult? Function(JobDetailsFailure value)? jobDetailsFailure,
  }) {
    return jobDetailsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(JobDetailsLoading value)? jobDetailsLoading,
    TResult Function(JobDetailsSuccess value)? jobDetailsSuccess,
    TResult Function(JobDetailsFailure value)? jobDetailsFailure,
    required TResult orElse(),
  }) {
    if (jobDetailsLoading != null) {
      return jobDetailsLoading(this);
    }
    return orElse();
  }
}

abstract class JobDetailsLoading implements JobDetailsState {
  const factory JobDetailsLoading() = _$JobDetailsLoadingImpl;
}

/// @nodoc
abstract class _$$JobDetailsSuccessImplCopyWith<$Res> {
  factory _$$JobDetailsSuccessImplCopyWith(_$JobDetailsSuccessImpl value,
          $Res Function(_$JobDetailsSuccessImpl) then) =
      __$$JobDetailsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({JobModel jobModel});
}

/// @nodoc
class __$$JobDetailsSuccessImplCopyWithImpl<$Res>
    extends _$JobDetailsStateCopyWithImpl<$Res, _$JobDetailsSuccessImpl>
    implements _$$JobDetailsSuccessImplCopyWith<$Res> {
  __$$JobDetailsSuccessImplCopyWithImpl(_$JobDetailsSuccessImpl _value,
      $Res Function(_$JobDetailsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobModel = null,
  }) {
    return _then(_$JobDetailsSuccessImpl(
      null == jobModel
          ? _value.jobModel
          : jobModel // ignore: cast_nullable_to_non_nullable
              as JobModel,
    ));
  }
}

/// @nodoc

class _$JobDetailsSuccessImpl implements JobDetailsSuccess {
  const _$JobDetailsSuccessImpl(this.jobModel);

  @override
  final JobModel jobModel;

  @override
  String toString() {
    return 'JobDetailsState.jobDetailsSuccess(jobModel: $jobModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobDetailsSuccessImpl &&
            (identical(other.jobModel, jobModel) ||
                other.jobModel == jobModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, jobModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobDetailsSuccessImplCopyWith<_$JobDetailsSuccessImpl> get copyWith =>
      __$$JobDetailsSuccessImplCopyWithImpl<_$JobDetailsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() jobDetailsLoading,
    required TResult Function(JobModel jobModel) jobDetailsSuccess,
    required TResult Function(String error) jobDetailsFailure,
  }) {
    return jobDetailsSuccess(jobModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? jobDetailsLoading,
    TResult? Function(JobModel jobModel)? jobDetailsSuccess,
    TResult? Function(String error)? jobDetailsFailure,
  }) {
    return jobDetailsSuccess?.call(jobModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? jobDetailsLoading,
    TResult Function(JobModel jobModel)? jobDetailsSuccess,
    TResult Function(String error)? jobDetailsFailure,
    required TResult orElse(),
  }) {
    if (jobDetailsSuccess != null) {
      return jobDetailsSuccess(jobModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(JobDetailsLoading value) jobDetailsLoading,
    required TResult Function(JobDetailsSuccess value) jobDetailsSuccess,
    required TResult Function(JobDetailsFailure value) jobDetailsFailure,
  }) {
    return jobDetailsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(JobDetailsLoading value)? jobDetailsLoading,
    TResult? Function(JobDetailsSuccess value)? jobDetailsSuccess,
    TResult? Function(JobDetailsFailure value)? jobDetailsFailure,
  }) {
    return jobDetailsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(JobDetailsLoading value)? jobDetailsLoading,
    TResult Function(JobDetailsSuccess value)? jobDetailsSuccess,
    TResult Function(JobDetailsFailure value)? jobDetailsFailure,
    required TResult orElse(),
  }) {
    if (jobDetailsSuccess != null) {
      return jobDetailsSuccess(this);
    }
    return orElse();
  }
}

abstract class JobDetailsSuccess implements JobDetailsState {
  const factory JobDetailsSuccess(final JobModel jobModel) =
      _$JobDetailsSuccessImpl;

  JobModel get jobModel;
  @JsonKey(ignore: true)
  _$$JobDetailsSuccessImplCopyWith<_$JobDetailsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JobDetailsFailureImplCopyWith<$Res> {
  factory _$$JobDetailsFailureImplCopyWith(_$JobDetailsFailureImpl value,
          $Res Function(_$JobDetailsFailureImpl) then) =
      __$$JobDetailsFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$JobDetailsFailureImplCopyWithImpl<$Res>
    extends _$JobDetailsStateCopyWithImpl<$Res, _$JobDetailsFailureImpl>
    implements _$$JobDetailsFailureImplCopyWith<$Res> {
  __$$JobDetailsFailureImplCopyWithImpl(_$JobDetailsFailureImpl _value,
      $Res Function(_$JobDetailsFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$JobDetailsFailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$JobDetailsFailureImpl implements JobDetailsFailure {
  const _$JobDetailsFailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'JobDetailsState.jobDetailsFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobDetailsFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobDetailsFailureImplCopyWith<_$JobDetailsFailureImpl> get copyWith =>
      __$$JobDetailsFailureImplCopyWithImpl<_$JobDetailsFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() jobDetailsLoading,
    required TResult Function(JobModel jobModel) jobDetailsSuccess,
    required TResult Function(String error) jobDetailsFailure,
  }) {
    return jobDetailsFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? jobDetailsLoading,
    TResult? Function(JobModel jobModel)? jobDetailsSuccess,
    TResult? Function(String error)? jobDetailsFailure,
  }) {
    return jobDetailsFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? jobDetailsLoading,
    TResult Function(JobModel jobModel)? jobDetailsSuccess,
    TResult Function(String error)? jobDetailsFailure,
    required TResult orElse(),
  }) {
    if (jobDetailsFailure != null) {
      return jobDetailsFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(JobDetailsLoading value) jobDetailsLoading,
    required TResult Function(JobDetailsSuccess value) jobDetailsSuccess,
    required TResult Function(JobDetailsFailure value) jobDetailsFailure,
  }) {
    return jobDetailsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(JobDetailsLoading value)? jobDetailsLoading,
    TResult? Function(JobDetailsSuccess value)? jobDetailsSuccess,
    TResult? Function(JobDetailsFailure value)? jobDetailsFailure,
  }) {
    return jobDetailsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(JobDetailsLoading value)? jobDetailsLoading,
    TResult Function(JobDetailsSuccess value)? jobDetailsSuccess,
    TResult Function(JobDetailsFailure value)? jobDetailsFailure,
    required TResult orElse(),
  }) {
    if (jobDetailsFailure != null) {
      return jobDetailsFailure(this);
    }
    return orElse();
  }
}

abstract class JobDetailsFailure implements JobDetailsState {
  const factory JobDetailsFailure(final String error) = _$JobDetailsFailureImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$JobDetailsFailureImplCopyWith<_$JobDetailsFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
