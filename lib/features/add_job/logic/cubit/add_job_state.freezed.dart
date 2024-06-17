// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_job_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddJobState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addJobLoading,
    required TResult Function() addJobSuccess,
    required TResult Function(String error) addJobFailure,
    required TResult Function() categoryAndCityLoading,
    required TResult Function(
            List<CategoryModel> categoryList, List<CityModel> cityList)
        categoryAndCitySuccess,
    required TResult Function(String error) categoryAndCityFailure,
    required TResult Function(int index) updateSteps,
    required TResult Function(int index) setPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addJobLoading,
    TResult? Function()? addJobSuccess,
    TResult? Function(String error)? addJobFailure,
    TResult? Function()? categoryAndCityLoading,
    TResult? Function(
            List<CategoryModel> categoryList, List<CityModel> cityList)?
        categoryAndCitySuccess,
    TResult? Function(String error)? categoryAndCityFailure,
    TResult? Function(int index)? updateSteps,
    TResult? Function(int index)? setPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addJobLoading,
    TResult Function()? addJobSuccess,
    TResult Function(String error)? addJobFailure,
    TResult Function()? categoryAndCityLoading,
    TResult Function(
            List<CategoryModel> categoryList, List<CityModel> cityList)?
        categoryAndCitySuccess,
    TResult Function(String error)? categoryAndCityFailure,
    TResult Function(int index)? updateSteps,
    TResult Function(int index)? setPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(AddJobLoading<T> value) addJobLoading,
    required TResult Function(AddJobSuccess<T> value) addJobSuccess,
    required TResult Function(AddJobFailure<T> value) addJobFailure,
    required TResult Function(CategoryAndCityLoading<T> value)
        categoryAndCityLoading,
    required TResult Function(CategoryAndCitySuccess<T> value)
        categoryAndCitySuccess,
    required TResult Function(CategoryAndCityFailure<T> value)
        categoryAndCityFailure,
    required TResult Function(UpdateSteps<T> value) updateSteps,
    required TResult Function(SetPage<T> value) setPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(AddJobLoading<T> value)? addJobLoading,
    TResult? Function(AddJobSuccess<T> value)? addJobSuccess,
    TResult? Function(AddJobFailure<T> value)? addJobFailure,
    TResult? Function(CategoryAndCityLoading<T> value)? categoryAndCityLoading,
    TResult? Function(CategoryAndCitySuccess<T> value)? categoryAndCitySuccess,
    TResult? Function(CategoryAndCityFailure<T> value)? categoryAndCityFailure,
    TResult? Function(UpdateSteps<T> value)? updateSteps,
    TResult? Function(SetPage<T> value)? setPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(AddJobLoading<T> value)? addJobLoading,
    TResult Function(AddJobSuccess<T> value)? addJobSuccess,
    TResult Function(AddJobFailure<T> value)? addJobFailure,
    TResult Function(CategoryAndCityLoading<T> value)? categoryAndCityLoading,
    TResult Function(CategoryAndCitySuccess<T> value)? categoryAndCitySuccess,
    TResult Function(CategoryAndCityFailure<T> value)? categoryAndCityFailure,
    TResult Function(UpdateSteps<T> value)? updateSteps,
    TResult Function(SetPage<T> value)? setPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddJobStateCopyWith<T, $Res> {
  factory $AddJobStateCopyWith(
          AddJobState<T> value, $Res Function(AddJobState<T>) then) =
      _$AddJobStateCopyWithImpl<T, $Res, AddJobState<T>>;
}

/// @nodoc
class _$AddJobStateCopyWithImpl<T, $Res, $Val extends AddJobState<T>>
    implements $AddJobStateCopyWith<T, $Res> {
  _$AddJobStateCopyWithImpl(this._value, this._then);

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
    extends _$AddJobStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
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
    return 'AddJobState<$T>.initial()';
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
    required TResult Function() addJobLoading,
    required TResult Function() addJobSuccess,
    required TResult Function(String error) addJobFailure,
    required TResult Function() categoryAndCityLoading,
    required TResult Function(
            List<CategoryModel> categoryList, List<CityModel> cityList)
        categoryAndCitySuccess,
    required TResult Function(String error) categoryAndCityFailure,
    required TResult Function(int index) updateSteps,
    required TResult Function(int index) setPage,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addJobLoading,
    TResult? Function()? addJobSuccess,
    TResult? Function(String error)? addJobFailure,
    TResult? Function()? categoryAndCityLoading,
    TResult? Function(
            List<CategoryModel> categoryList, List<CityModel> cityList)?
        categoryAndCitySuccess,
    TResult? Function(String error)? categoryAndCityFailure,
    TResult? Function(int index)? updateSteps,
    TResult? Function(int index)? setPage,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addJobLoading,
    TResult Function()? addJobSuccess,
    TResult Function(String error)? addJobFailure,
    TResult Function()? categoryAndCityLoading,
    TResult Function(
            List<CategoryModel> categoryList, List<CityModel> cityList)?
        categoryAndCitySuccess,
    TResult Function(String error)? categoryAndCityFailure,
    TResult Function(int index)? updateSteps,
    TResult Function(int index)? setPage,
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
    required TResult Function(AddJobLoading<T> value) addJobLoading,
    required TResult Function(AddJobSuccess<T> value) addJobSuccess,
    required TResult Function(AddJobFailure<T> value) addJobFailure,
    required TResult Function(CategoryAndCityLoading<T> value)
        categoryAndCityLoading,
    required TResult Function(CategoryAndCitySuccess<T> value)
        categoryAndCitySuccess,
    required TResult Function(CategoryAndCityFailure<T> value)
        categoryAndCityFailure,
    required TResult Function(UpdateSteps<T> value) updateSteps,
    required TResult Function(SetPage<T> value) setPage,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(AddJobLoading<T> value)? addJobLoading,
    TResult? Function(AddJobSuccess<T> value)? addJobSuccess,
    TResult? Function(AddJobFailure<T> value)? addJobFailure,
    TResult? Function(CategoryAndCityLoading<T> value)? categoryAndCityLoading,
    TResult? Function(CategoryAndCitySuccess<T> value)? categoryAndCitySuccess,
    TResult? Function(CategoryAndCityFailure<T> value)? categoryAndCityFailure,
    TResult? Function(UpdateSteps<T> value)? updateSteps,
    TResult? Function(SetPage<T> value)? setPage,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(AddJobLoading<T> value)? addJobLoading,
    TResult Function(AddJobSuccess<T> value)? addJobSuccess,
    TResult Function(AddJobFailure<T> value)? addJobFailure,
    TResult Function(CategoryAndCityLoading<T> value)? categoryAndCityLoading,
    TResult Function(CategoryAndCitySuccess<T> value)? categoryAndCitySuccess,
    TResult Function(CategoryAndCityFailure<T> value)? categoryAndCityFailure,
    TResult Function(UpdateSteps<T> value)? updateSteps,
    TResult Function(SetPage<T> value)? setPage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements AddJobState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$AddJobLoadingImplCopyWith<T, $Res> {
  factory _$$AddJobLoadingImplCopyWith(_$AddJobLoadingImpl<T> value,
          $Res Function(_$AddJobLoadingImpl<T>) then) =
      __$$AddJobLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AddJobLoadingImplCopyWithImpl<T, $Res>
    extends _$AddJobStateCopyWithImpl<T, $Res, _$AddJobLoadingImpl<T>>
    implements _$$AddJobLoadingImplCopyWith<T, $Res> {
  __$$AddJobLoadingImplCopyWithImpl(_$AddJobLoadingImpl<T> _value,
      $Res Function(_$AddJobLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddJobLoadingImpl<T> implements AddJobLoading<T> {
  const _$AddJobLoadingImpl();

  @override
  String toString() {
    return 'AddJobState<$T>.addJobLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddJobLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addJobLoading,
    required TResult Function() addJobSuccess,
    required TResult Function(String error) addJobFailure,
    required TResult Function() categoryAndCityLoading,
    required TResult Function(
            List<CategoryModel> categoryList, List<CityModel> cityList)
        categoryAndCitySuccess,
    required TResult Function(String error) categoryAndCityFailure,
    required TResult Function(int index) updateSteps,
    required TResult Function(int index) setPage,
  }) {
    return addJobLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addJobLoading,
    TResult? Function()? addJobSuccess,
    TResult? Function(String error)? addJobFailure,
    TResult? Function()? categoryAndCityLoading,
    TResult? Function(
            List<CategoryModel> categoryList, List<CityModel> cityList)?
        categoryAndCitySuccess,
    TResult? Function(String error)? categoryAndCityFailure,
    TResult? Function(int index)? updateSteps,
    TResult? Function(int index)? setPage,
  }) {
    return addJobLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addJobLoading,
    TResult Function()? addJobSuccess,
    TResult Function(String error)? addJobFailure,
    TResult Function()? categoryAndCityLoading,
    TResult Function(
            List<CategoryModel> categoryList, List<CityModel> cityList)?
        categoryAndCitySuccess,
    TResult Function(String error)? categoryAndCityFailure,
    TResult Function(int index)? updateSteps,
    TResult Function(int index)? setPage,
    required TResult orElse(),
  }) {
    if (addJobLoading != null) {
      return addJobLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(AddJobLoading<T> value) addJobLoading,
    required TResult Function(AddJobSuccess<T> value) addJobSuccess,
    required TResult Function(AddJobFailure<T> value) addJobFailure,
    required TResult Function(CategoryAndCityLoading<T> value)
        categoryAndCityLoading,
    required TResult Function(CategoryAndCitySuccess<T> value)
        categoryAndCitySuccess,
    required TResult Function(CategoryAndCityFailure<T> value)
        categoryAndCityFailure,
    required TResult Function(UpdateSteps<T> value) updateSteps,
    required TResult Function(SetPage<T> value) setPage,
  }) {
    return addJobLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(AddJobLoading<T> value)? addJobLoading,
    TResult? Function(AddJobSuccess<T> value)? addJobSuccess,
    TResult? Function(AddJobFailure<T> value)? addJobFailure,
    TResult? Function(CategoryAndCityLoading<T> value)? categoryAndCityLoading,
    TResult? Function(CategoryAndCitySuccess<T> value)? categoryAndCitySuccess,
    TResult? Function(CategoryAndCityFailure<T> value)? categoryAndCityFailure,
    TResult? Function(UpdateSteps<T> value)? updateSteps,
    TResult? Function(SetPage<T> value)? setPage,
  }) {
    return addJobLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(AddJobLoading<T> value)? addJobLoading,
    TResult Function(AddJobSuccess<T> value)? addJobSuccess,
    TResult Function(AddJobFailure<T> value)? addJobFailure,
    TResult Function(CategoryAndCityLoading<T> value)? categoryAndCityLoading,
    TResult Function(CategoryAndCitySuccess<T> value)? categoryAndCitySuccess,
    TResult Function(CategoryAndCityFailure<T> value)? categoryAndCityFailure,
    TResult Function(UpdateSteps<T> value)? updateSteps,
    TResult Function(SetPage<T> value)? setPage,
    required TResult orElse(),
  }) {
    if (addJobLoading != null) {
      return addJobLoading(this);
    }
    return orElse();
  }
}

abstract class AddJobLoading<T> implements AddJobState<T> {
  const factory AddJobLoading() = _$AddJobLoadingImpl<T>;
}

/// @nodoc
abstract class _$$AddJobSuccessImplCopyWith<T, $Res> {
  factory _$$AddJobSuccessImplCopyWith(_$AddJobSuccessImpl<T> value,
          $Res Function(_$AddJobSuccessImpl<T>) then) =
      __$$AddJobSuccessImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AddJobSuccessImplCopyWithImpl<T, $Res>
    extends _$AddJobStateCopyWithImpl<T, $Res, _$AddJobSuccessImpl<T>>
    implements _$$AddJobSuccessImplCopyWith<T, $Res> {
  __$$AddJobSuccessImplCopyWithImpl(_$AddJobSuccessImpl<T> _value,
      $Res Function(_$AddJobSuccessImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddJobSuccessImpl<T> implements AddJobSuccess<T> {
  const _$AddJobSuccessImpl();

  @override
  String toString() {
    return 'AddJobState<$T>.addJobSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddJobSuccessImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addJobLoading,
    required TResult Function() addJobSuccess,
    required TResult Function(String error) addJobFailure,
    required TResult Function() categoryAndCityLoading,
    required TResult Function(
            List<CategoryModel> categoryList, List<CityModel> cityList)
        categoryAndCitySuccess,
    required TResult Function(String error) categoryAndCityFailure,
    required TResult Function(int index) updateSteps,
    required TResult Function(int index) setPage,
  }) {
    return addJobSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addJobLoading,
    TResult? Function()? addJobSuccess,
    TResult? Function(String error)? addJobFailure,
    TResult? Function()? categoryAndCityLoading,
    TResult? Function(
            List<CategoryModel> categoryList, List<CityModel> cityList)?
        categoryAndCitySuccess,
    TResult? Function(String error)? categoryAndCityFailure,
    TResult? Function(int index)? updateSteps,
    TResult? Function(int index)? setPage,
  }) {
    return addJobSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addJobLoading,
    TResult Function()? addJobSuccess,
    TResult Function(String error)? addJobFailure,
    TResult Function()? categoryAndCityLoading,
    TResult Function(
            List<CategoryModel> categoryList, List<CityModel> cityList)?
        categoryAndCitySuccess,
    TResult Function(String error)? categoryAndCityFailure,
    TResult Function(int index)? updateSteps,
    TResult Function(int index)? setPage,
    required TResult orElse(),
  }) {
    if (addJobSuccess != null) {
      return addJobSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(AddJobLoading<T> value) addJobLoading,
    required TResult Function(AddJobSuccess<T> value) addJobSuccess,
    required TResult Function(AddJobFailure<T> value) addJobFailure,
    required TResult Function(CategoryAndCityLoading<T> value)
        categoryAndCityLoading,
    required TResult Function(CategoryAndCitySuccess<T> value)
        categoryAndCitySuccess,
    required TResult Function(CategoryAndCityFailure<T> value)
        categoryAndCityFailure,
    required TResult Function(UpdateSteps<T> value) updateSteps,
    required TResult Function(SetPage<T> value) setPage,
  }) {
    return addJobSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(AddJobLoading<T> value)? addJobLoading,
    TResult? Function(AddJobSuccess<T> value)? addJobSuccess,
    TResult? Function(AddJobFailure<T> value)? addJobFailure,
    TResult? Function(CategoryAndCityLoading<T> value)? categoryAndCityLoading,
    TResult? Function(CategoryAndCitySuccess<T> value)? categoryAndCitySuccess,
    TResult? Function(CategoryAndCityFailure<T> value)? categoryAndCityFailure,
    TResult? Function(UpdateSteps<T> value)? updateSteps,
    TResult? Function(SetPage<T> value)? setPage,
  }) {
    return addJobSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(AddJobLoading<T> value)? addJobLoading,
    TResult Function(AddJobSuccess<T> value)? addJobSuccess,
    TResult Function(AddJobFailure<T> value)? addJobFailure,
    TResult Function(CategoryAndCityLoading<T> value)? categoryAndCityLoading,
    TResult Function(CategoryAndCitySuccess<T> value)? categoryAndCitySuccess,
    TResult Function(CategoryAndCityFailure<T> value)? categoryAndCityFailure,
    TResult Function(UpdateSteps<T> value)? updateSteps,
    TResult Function(SetPage<T> value)? setPage,
    required TResult orElse(),
  }) {
    if (addJobSuccess != null) {
      return addJobSuccess(this);
    }
    return orElse();
  }
}

abstract class AddJobSuccess<T> implements AddJobState<T> {
  const factory AddJobSuccess() = _$AddJobSuccessImpl<T>;
}

/// @nodoc
abstract class _$$AddJobFailureImplCopyWith<T, $Res> {
  factory _$$AddJobFailureImplCopyWith(_$AddJobFailureImpl<T> value,
          $Res Function(_$AddJobFailureImpl<T>) then) =
      __$$AddJobFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$AddJobFailureImplCopyWithImpl<T, $Res>
    extends _$AddJobStateCopyWithImpl<T, $Res, _$AddJobFailureImpl<T>>
    implements _$$AddJobFailureImplCopyWith<T, $Res> {
  __$$AddJobFailureImplCopyWithImpl(_$AddJobFailureImpl<T> _value,
      $Res Function(_$AddJobFailureImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AddJobFailureImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddJobFailureImpl<T> implements AddJobFailure<T> {
  const _$AddJobFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AddJobState<$T>.addJobFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddJobFailureImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddJobFailureImplCopyWith<T, _$AddJobFailureImpl<T>> get copyWith =>
      __$$AddJobFailureImplCopyWithImpl<T, _$AddJobFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addJobLoading,
    required TResult Function() addJobSuccess,
    required TResult Function(String error) addJobFailure,
    required TResult Function() categoryAndCityLoading,
    required TResult Function(
            List<CategoryModel> categoryList, List<CityModel> cityList)
        categoryAndCitySuccess,
    required TResult Function(String error) categoryAndCityFailure,
    required TResult Function(int index) updateSteps,
    required TResult Function(int index) setPage,
  }) {
    return addJobFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addJobLoading,
    TResult? Function()? addJobSuccess,
    TResult? Function(String error)? addJobFailure,
    TResult? Function()? categoryAndCityLoading,
    TResult? Function(
            List<CategoryModel> categoryList, List<CityModel> cityList)?
        categoryAndCitySuccess,
    TResult? Function(String error)? categoryAndCityFailure,
    TResult? Function(int index)? updateSteps,
    TResult? Function(int index)? setPage,
  }) {
    return addJobFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addJobLoading,
    TResult Function()? addJobSuccess,
    TResult Function(String error)? addJobFailure,
    TResult Function()? categoryAndCityLoading,
    TResult Function(
            List<CategoryModel> categoryList, List<CityModel> cityList)?
        categoryAndCitySuccess,
    TResult Function(String error)? categoryAndCityFailure,
    TResult Function(int index)? updateSteps,
    TResult Function(int index)? setPage,
    required TResult orElse(),
  }) {
    if (addJobFailure != null) {
      return addJobFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(AddJobLoading<T> value) addJobLoading,
    required TResult Function(AddJobSuccess<T> value) addJobSuccess,
    required TResult Function(AddJobFailure<T> value) addJobFailure,
    required TResult Function(CategoryAndCityLoading<T> value)
        categoryAndCityLoading,
    required TResult Function(CategoryAndCitySuccess<T> value)
        categoryAndCitySuccess,
    required TResult Function(CategoryAndCityFailure<T> value)
        categoryAndCityFailure,
    required TResult Function(UpdateSteps<T> value) updateSteps,
    required TResult Function(SetPage<T> value) setPage,
  }) {
    return addJobFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(AddJobLoading<T> value)? addJobLoading,
    TResult? Function(AddJobSuccess<T> value)? addJobSuccess,
    TResult? Function(AddJobFailure<T> value)? addJobFailure,
    TResult? Function(CategoryAndCityLoading<T> value)? categoryAndCityLoading,
    TResult? Function(CategoryAndCitySuccess<T> value)? categoryAndCitySuccess,
    TResult? Function(CategoryAndCityFailure<T> value)? categoryAndCityFailure,
    TResult? Function(UpdateSteps<T> value)? updateSteps,
    TResult? Function(SetPage<T> value)? setPage,
  }) {
    return addJobFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(AddJobLoading<T> value)? addJobLoading,
    TResult Function(AddJobSuccess<T> value)? addJobSuccess,
    TResult Function(AddJobFailure<T> value)? addJobFailure,
    TResult Function(CategoryAndCityLoading<T> value)? categoryAndCityLoading,
    TResult Function(CategoryAndCitySuccess<T> value)? categoryAndCitySuccess,
    TResult Function(CategoryAndCityFailure<T> value)? categoryAndCityFailure,
    TResult Function(UpdateSteps<T> value)? updateSteps,
    TResult Function(SetPage<T> value)? setPage,
    required TResult orElse(),
  }) {
    if (addJobFailure != null) {
      return addJobFailure(this);
    }
    return orElse();
  }
}

abstract class AddJobFailure<T> implements AddJobState<T> {
  const factory AddJobFailure({required final String error}) =
      _$AddJobFailureImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$AddJobFailureImplCopyWith<T, _$AddJobFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryAndCityLoadingImplCopyWith<T, $Res> {
  factory _$$CategoryAndCityLoadingImplCopyWith(
          _$CategoryAndCityLoadingImpl<T> value,
          $Res Function(_$CategoryAndCityLoadingImpl<T>) then) =
      __$$CategoryAndCityLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$CategoryAndCityLoadingImplCopyWithImpl<T, $Res>
    extends _$AddJobStateCopyWithImpl<T, $Res, _$CategoryAndCityLoadingImpl<T>>
    implements _$$CategoryAndCityLoadingImplCopyWith<T, $Res> {
  __$$CategoryAndCityLoadingImplCopyWithImpl(
      _$CategoryAndCityLoadingImpl<T> _value,
      $Res Function(_$CategoryAndCityLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CategoryAndCityLoadingImpl<T> implements CategoryAndCityLoading<T> {
  const _$CategoryAndCityLoadingImpl();

  @override
  String toString() {
    return 'AddJobState<$T>.categoryAndCityLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryAndCityLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addJobLoading,
    required TResult Function() addJobSuccess,
    required TResult Function(String error) addJobFailure,
    required TResult Function() categoryAndCityLoading,
    required TResult Function(
            List<CategoryModel> categoryList, List<CityModel> cityList)
        categoryAndCitySuccess,
    required TResult Function(String error) categoryAndCityFailure,
    required TResult Function(int index) updateSteps,
    required TResult Function(int index) setPage,
  }) {
    return categoryAndCityLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addJobLoading,
    TResult? Function()? addJobSuccess,
    TResult? Function(String error)? addJobFailure,
    TResult? Function()? categoryAndCityLoading,
    TResult? Function(
            List<CategoryModel> categoryList, List<CityModel> cityList)?
        categoryAndCitySuccess,
    TResult? Function(String error)? categoryAndCityFailure,
    TResult? Function(int index)? updateSteps,
    TResult? Function(int index)? setPage,
  }) {
    return categoryAndCityLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addJobLoading,
    TResult Function()? addJobSuccess,
    TResult Function(String error)? addJobFailure,
    TResult Function()? categoryAndCityLoading,
    TResult Function(
            List<CategoryModel> categoryList, List<CityModel> cityList)?
        categoryAndCitySuccess,
    TResult Function(String error)? categoryAndCityFailure,
    TResult Function(int index)? updateSteps,
    TResult Function(int index)? setPage,
    required TResult orElse(),
  }) {
    if (categoryAndCityLoading != null) {
      return categoryAndCityLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(AddJobLoading<T> value) addJobLoading,
    required TResult Function(AddJobSuccess<T> value) addJobSuccess,
    required TResult Function(AddJobFailure<T> value) addJobFailure,
    required TResult Function(CategoryAndCityLoading<T> value)
        categoryAndCityLoading,
    required TResult Function(CategoryAndCitySuccess<T> value)
        categoryAndCitySuccess,
    required TResult Function(CategoryAndCityFailure<T> value)
        categoryAndCityFailure,
    required TResult Function(UpdateSteps<T> value) updateSteps,
    required TResult Function(SetPage<T> value) setPage,
  }) {
    return categoryAndCityLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(AddJobLoading<T> value)? addJobLoading,
    TResult? Function(AddJobSuccess<T> value)? addJobSuccess,
    TResult? Function(AddJobFailure<T> value)? addJobFailure,
    TResult? Function(CategoryAndCityLoading<T> value)? categoryAndCityLoading,
    TResult? Function(CategoryAndCitySuccess<T> value)? categoryAndCitySuccess,
    TResult? Function(CategoryAndCityFailure<T> value)? categoryAndCityFailure,
    TResult? Function(UpdateSteps<T> value)? updateSteps,
    TResult? Function(SetPage<T> value)? setPage,
  }) {
    return categoryAndCityLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(AddJobLoading<T> value)? addJobLoading,
    TResult Function(AddJobSuccess<T> value)? addJobSuccess,
    TResult Function(AddJobFailure<T> value)? addJobFailure,
    TResult Function(CategoryAndCityLoading<T> value)? categoryAndCityLoading,
    TResult Function(CategoryAndCitySuccess<T> value)? categoryAndCitySuccess,
    TResult Function(CategoryAndCityFailure<T> value)? categoryAndCityFailure,
    TResult Function(UpdateSteps<T> value)? updateSteps,
    TResult Function(SetPage<T> value)? setPage,
    required TResult orElse(),
  }) {
    if (categoryAndCityLoading != null) {
      return categoryAndCityLoading(this);
    }
    return orElse();
  }
}

abstract class CategoryAndCityLoading<T> implements AddJobState<T> {
  const factory CategoryAndCityLoading() = _$CategoryAndCityLoadingImpl<T>;
}

/// @nodoc
abstract class _$$CategoryAndCitySuccessImplCopyWith<T, $Res> {
  factory _$$CategoryAndCitySuccessImplCopyWith(
          _$CategoryAndCitySuccessImpl<T> value,
          $Res Function(_$CategoryAndCitySuccessImpl<T>) then) =
      __$$CategoryAndCitySuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<CategoryModel> categoryList, List<CityModel> cityList});
}

/// @nodoc
class __$$CategoryAndCitySuccessImplCopyWithImpl<T, $Res>
    extends _$AddJobStateCopyWithImpl<T, $Res, _$CategoryAndCitySuccessImpl<T>>
    implements _$$CategoryAndCitySuccessImplCopyWith<T, $Res> {
  __$$CategoryAndCitySuccessImplCopyWithImpl(
      _$CategoryAndCitySuccessImpl<T> _value,
      $Res Function(_$CategoryAndCitySuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryList = null,
    Object? cityList = null,
  }) {
    return _then(_$CategoryAndCitySuccessImpl<T>(
      null == categoryList
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      null == cityList
          ? _value._cityList
          : cityList // ignore: cast_nullable_to_non_nullable
              as List<CityModel>,
    ));
  }
}

/// @nodoc

class _$CategoryAndCitySuccessImpl<T> implements CategoryAndCitySuccess<T> {
  const _$CategoryAndCitySuccessImpl(
      final List<CategoryModel> categoryList, final List<CityModel> cityList)
      : _categoryList = categoryList,
        _cityList = cityList;

  final List<CategoryModel> _categoryList;
  @override
  List<CategoryModel> get categoryList {
    if (_categoryList is EqualUnmodifiableListView) return _categoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryList);
  }

  final List<CityModel> _cityList;
  @override
  List<CityModel> get cityList {
    if (_cityList is EqualUnmodifiableListView) return _cityList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cityList);
  }

  @override
  String toString() {
    return 'AddJobState<$T>.categoryAndCitySuccess(categoryList: $categoryList, cityList: $cityList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryAndCitySuccessImpl<T> &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList) &&
            const DeepCollectionEquality().equals(other._cityList, _cityList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categoryList),
      const DeepCollectionEquality().hash(_cityList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryAndCitySuccessImplCopyWith<T, _$CategoryAndCitySuccessImpl<T>>
      get copyWith => __$$CategoryAndCitySuccessImplCopyWithImpl<T,
          _$CategoryAndCitySuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addJobLoading,
    required TResult Function() addJobSuccess,
    required TResult Function(String error) addJobFailure,
    required TResult Function() categoryAndCityLoading,
    required TResult Function(
            List<CategoryModel> categoryList, List<CityModel> cityList)
        categoryAndCitySuccess,
    required TResult Function(String error) categoryAndCityFailure,
    required TResult Function(int index) updateSteps,
    required TResult Function(int index) setPage,
  }) {
    return categoryAndCitySuccess(categoryList, cityList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addJobLoading,
    TResult? Function()? addJobSuccess,
    TResult? Function(String error)? addJobFailure,
    TResult? Function()? categoryAndCityLoading,
    TResult? Function(
            List<CategoryModel> categoryList, List<CityModel> cityList)?
        categoryAndCitySuccess,
    TResult? Function(String error)? categoryAndCityFailure,
    TResult? Function(int index)? updateSteps,
    TResult? Function(int index)? setPage,
  }) {
    return categoryAndCitySuccess?.call(categoryList, cityList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addJobLoading,
    TResult Function()? addJobSuccess,
    TResult Function(String error)? addJobFailure,
    TResult Function()? categoryAndCityLoading,
    TResult Function(
            List<CategoryModel> categoryList, List<CityModel> cityList)?
        categoryAndCitySuccess,
    TResult Function(String error)? categoryAndCityFailure,
    TResult Function(int index)? updateSteps,
    TResult Function(int index)? setPage,
    required TResult orElse(),
  }) {
    if (categoryAndCitySuccess != null) {
      return categoryAndCitySuccess(categoryList, cityList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(AddJobLoading<T> value) addJobLoading,
    required TResult Function(AddJobSuccess<T> value) addJobSuccess,
    required TResult Function(AddJobFailure<T> value) addJobFailure,
    required TResult Function(CategoryAndCityLoading<T> value)
        categoryAndCityLoading,
    required TResult Function(CategoryAndCitySuccess<T> value)
        categoryAndCitySuccess,
    required TResult Function(CategoryAndCityFailure<T> value)
        categoryAndCityFailure,
    required TResult Function(UpdateSteps<T> value) updateSteps,
    required TResult Function(SetPage<T> value) setPage,
  }) {
    return categoryAndCitySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(AddJobLoading<T> value)? addJobLoading,
    TResult? Function(AddJobSuccess<T> value)? addJobSuccess,
    TResult? Function(AddJobFailure<T> value)? addJobFailure,
    TResult? Function(CategoryAndCityLoading<T> value)? categoryAndCityLoading,
    TResult? Function(CategoryAndCitySuccess<T> value)? categoryAndCitySuccess,
    TResult? Function(CategoryAndCityFailure<T> value)? categoryAndCityFailure,
    TResult? Function(UpdateSteps<T> value)? updateSteps,
    TResult? Function(SetPage<T> value)? setPage,
  }) {
    return categoryAndCitySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(AddJobLoading<T> value)? addJobLoading,
    TResult Function(AddJobSuccess<T> value)? addJobSuccess,
    TResult Function(AddJobFailure<T> value)? addJobFailure,
    TResult Function(CategoryAndCityLoading<T> value)? categoryAndCityLoading,
    TResult Function(CategoryAndCitySuccess<T> value)? categoryAndCitySuccess,
    TResult Function(CategoryAndCityFailure<T> value)? categoryAndCityFailure,
    TResult Function(UpdateSteps<T> value)? updateSteps,
    TResult Function(SetPage<T> value)? setPage,
    required TResult orElse(),
  }) {
    if (categoryAndCitySuccess != null) {
      return categoryAndCitySuccess(this);
    }
    return orElse();
  }
}

abstract class CategoryAndCitySuccess<T> implements AddJobState<T> {
  const factory CategoryAndCitySuccess(final List<CategoryModel> categoryList,
      final List<CityModel> cityList) = _$CategoryAndCitySuccessImpl<T>;

  List<CategoryModel> get categoryList;
  List<CityModel> get cityList;
  @JsonKey(ignore: true)
  _$$CategoryAndCitySuccessImplCopyWith<T, _$CategoryAndCitySuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryAndCityFailureImplCopyWith<T, $Res> {
  factory _$$CategoryAndCityFailureImplCopyWith(
          _$CategoryAndCityFailureImpl<T> value,
          $Res Function(_$CategoryAndCityFailureImpl<T>) then) =
      __$$CategoryAndCityFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$CategoryAndCityFailureImplCopyWithImpl<T, $Res>
    extends _$AddJobStateCopyWithImpl<T, $Res, _$CategoryAndCityFailureImpl<T>>
    implements _$$CategoryAndCityFailureImplCopyWith<T, $Res> {
  __$$CategoryAndCityFailureImplCopyWithImpl(
      _$CategoryAndCityFailureImpl<T> _value,
      $Res Function(_$CategoryAndCityFailureImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CategoryAndCityFailureImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CategoryAndCityFailureImpl<T> implements CategoryAndCityFailure<T> {
  const _$CategoryAndCityFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AddJobState<$T>.categoryAndCityFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryAndCityFailureImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryAndCityFailureImplCopyWith<T, _$CategoryAndCityFailureImpl<T>>
      get copyWith => __$$CategoryAndCityFailureImplCopyWithImpl<T,
          _$CategoryAndCityFailureImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addJobLoading,
    required TResult Function() addJobSuccess,
    required TResult Function(String error) addJobFailure,
    required TResult Function() categoryAndCityLoading,
    required TResult Function(
            List<CategoryModel> categoryList, List<CityModel> cityList)
        categoryAndCitySuccess,
    required TResult Function(String error) categoryAndCityFailure,
    required TResult Function(int index) updateSteps,
    required TResult Function(int index) setPage,
  }) {
    return categoryAndCityFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addJobLoading,
    TResult? Function()? addJobSuccess,
    TResult? Function(String error)? addJobFailure,
    TResult? Function()? categoryAndCityLoading,
    TResult? Function(
            List<CategoryModel> categoryList, List<CityModel> cityList)?
        categoryAndCitySuccess,
    TResult? Function(String error)? categoryAndCityFailure,
    TResult? Function(int index)? updateSteps,
    TResult? Function(int index)? setPage,
  }) {
    return categoryAndCityFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addJobLoading,
    TResult Function()? addJobSuccess,
    TResult Function(String error)? addJobFailure,
    TResult Function()? categoryAndCityLoading,
    TResult Function(
            List<CategoryModel> categoryList, List<CityModel> cityList)?
        categoryAndCitySuccess,
    TResult Function(String error)? categoryAndCityFailure,
    TResult Function(int index)? updateSteps,
    TResult Function(int index)? setPage,
    required TResult orElse(),
  }) {
    if (categoryAndCityFailure != null) {
      return categoryAndCityFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(AddJobLoading<T> value) addJobLoading,
    required TResult Function(AddJobSuccess<T> value) addJobSuccess,
    required TResult Function(AddJobFailure<T> value) addJobFailure,
    required TResult Function(CategoryAndCityLoading<T> value)
        categoryAndCityLoading,
    required TResult Function(CategoryAndCitySuccess<T> value)
        categoryAndCitySuccess,
    required TResult Function(CategoryAndCityFailure<T> value)
        categoryAndCityFailure,
    required TResult Function(UpdateSteps<T> value) updateSteps,
    required TResult Function(SetPage<T> value) setPage,
  }) {
    return categoryAndCityFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(AddJobLoading<T> value)? addJobLoading,
    TResult? Function(AddJobSuccess<T> value)? addJobSuccess,
    TResult? Function(AddJobFailure<T> value)? addJobFailure,
    TResult? Function(CategoryAndCityLoading<T> value)? categoryAndCityLoading,
    TResult? Function(CategoryAndCitySuccess<T> value)? categoryAndCitySuccess,
    TResult? Function(CategoryAndCityFailure<T> value)? categoryAndCityFailure,
    TResult? Function(UpdateSteps<T> value)? updateSteps,
    TResult? Function(SetPage<T> value)? setPage,
  }) {
    return categoryAndCityFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(AddJobLoading<T> value)? addJobLoading,
    TResult Function(AddJobSuccess<T> value)? addJobSuccess,
    TResult Function(AddJobFailure<T> value)? addJobFailure,
    TResult Function(CategoryAndCityLoading<T> value)? categoryAndCityLoading,
    TResult Function(CategoryAndCitySuccess<T> value)? categoryAndCitySuccess,
    TResult Function(CategoryAndCityFailure<T> value)? categoryAndCityFailure,
    TResult Function(UpdateSteps<T> value)? updateSteps,
    TResult Function(SetPage<T> value)? setPage,
    required TResult orElse(),
  }) {
    if (categoryAndCityFailure != null) {
      return categoryAndCityFailure(this);
    }
    return orElse();
  }
}

abstract class CategoryAndCityFailure<T> implements AddJobState<T> {
  const factory CategoryAndCityFailure({required final String error}) =
      _$CategoryAndCityFailureImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$CategoryAndCityFailureImplCopyWith<T, _$CategoryAndCityFailureImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateStepsImplCopyWith<T, $Res> {
  factory _$$UpdateStepsImplCopyWith(_$UpdateStepsImpl<T> value,
          $Res Function(_$UpdateStepsImpl<T>) then) =
      __$$UpdateStepsImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$UpdateStepsImplCopyWithImpl<T, $Res>
    extends _$AddJobStateCopyWithImpl<T, $Res, _$UpdateStepsImpl<T>>
    implements _$$UpdateStepsImplCopyWith<T, $Res> {
  __$$UpdateStepsImplCopyWithImpl(
      _$UpdateStepsImpl<T> _value, $Res Function(_$UpdateStepsImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$UpdateStepsImpl<T>(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateStepsImpl<T> implements UpdateSteps<T> {
  const _$UpdateStepsImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'AddJobState<$T>.updateSteps(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStepsImpl<T> &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStepsImplCopyWith<T, _$UpdateStepsImpl<T>> get copyWith =>
      __$$UpdateStepsImplCopyWithImpl<T, _$UpdateStepsImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addJobLoading,
    required TResult Function() addJobSuccess,
    required TResult Function(String error) addJobFailure,
    required TResult Function() categoryAndCityLoading,
    required TResult Function(
            List<CategoryModel> categoryList, List<CityModel> cityList)
        categoryAndCitySuccess,
    required TResult Function(String error) categoryAndCityFailure,
    required TResult Function(int index) updateSteps,
    required TResult Function(int index) setPage,
  }) {
    return updateSteps(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addJobLoading,
    TResult? Function()? addJobSuccess,
    TResult? Function(String error)? addJobFailure,
    TResult? Function()? categoryAndCityLoading,
    TResult? Function(
            List<CategoryModel> categoryList, List<CityModel> cityList)?
        categoryAndCitySuccess,
    TResult? Function(String error)? categoryAndCityFailure,
    TResult? Function(int index)? updateSteps,
    TResult? Function(int index)? setPage,
  }) {
    return updateSteps?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addJobLoading,
    TResult Function()? addJobSuccess,
    TResult Function(String error)? addJobFailure,
    TResult Function()? categoryAndCityLoading,
    TResult Function(
            List<CategoryModel> categoryList, List<CityModel> cityList)?
        categoryAndCitySuccess,
    TResult Function(String error)? categoryAndCityFailure,
    TResult Function(int index)? updateSteps,
    TResult Function(int index)? setPage,
    required TResult orElse(),
  }) {
    if (updateSteps != null) {
      return updateSteps(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(AddJobLoading<T> value) addJobLoading,
    required TResult Function(AddJobSuccess<T> value) addJobSuccess,
    required TResult Function(AddJobFailure<T> value) addJobFailure,
    required TResult Function(CategoryAndCityLoading<T> value)
        categoryAndCityLoading,
    required TResult Function(CategoryAndCitySuccess<T> value)
        categoryAndCitySuccess,
    required TResult Function(CategoryAndCityFailure<T> value)
        categoryAndCityFailure,
    required TResult Function(UpdateSteps<T> value) updateSteps,
    required TResult Function(SetPage<T> value) setPage,
  }) {
    return updateSteps(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(AddJobLoading<T> value)? addJobLoading,
    TResult? Function(AddJobSuccess<T> value)? addJobSuccess,
    TResult? Function(AddJobFailure<T> value)? addJobFailure,
    TResult? Function(CategoryAndCityLoading<T> value)? categoryAndCityLoading,
    TResult? Function(CategoryAndCitySuccess<T> value)? categoryAndCitySuccess,
    TResult? Function(CategoryAndCityFailure<T> value)? categoryAndCityFailure,
    TResult? Function(UpdateSteps<T> value)? updateSteps,
    TResult? Function(SetPage<T> value)? setPage,
  }) {
    return updateSteps?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(AddJobLoading<T> value)? addJobLoading,
    TResult Function(AddJobSuccess<T> value)? addJobSuccess,
    TResult Function(AddJobFailure<T> value)? addJobFailure,
    TResult Function(CategoryAndCityLoading<T> value)? categoryAndCityLoading,
    TResult Function(CategoryAndCitySuccess<T> value)? categoryAndCitySuccess,
    TResult Function(CategoryAndCityFailure<T> value)? categoryAndCityFailure,
    TResult Function(UpdateSteps<T> value)? updateSteps,
    TResult Function(SetPage<T> value)? setPage,
    required TResult orElse(),
  }) {
    if (updateSteps != null) {
      return updateSteps(this);
    }
    return orElse();
  }
}

abstract class UpdateSteps<T> implements AddJobState<T> {
  const factory UpdateSteps({required final int index}) = _$UpdateStepsImpl<T>;

  int get index;
  @JsonKey(ignore: true)
  _$$UpdateStepsImplCopyWith<T, _$UpdateStepsImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetPageImplCopyWith<T, $Res> {
  factory _$$SetPageImplCopyWith(
          _$SetPageImpl<T> value, $Res Function(_$SetPageImpl<T>) then) =
      __$$SetPageImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$SetPageImplCopyWithImpl<T, $Res>
    extends _$AddJobStateCopyWithImpl<T, $Res, _$SetPageImpl<T>>
    implements _$$SetPageImplCopyWith<T, $Res> {
  __$$SetPageImplCopyWithImpl(
      _$SetPageImpl<T> _value, $Res Function(_$SetPageImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$SetPageImpl<T>(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetPageImpl<T> implements SetPage<T> {
  const _$SetPageImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'AddJobState<$T>.setPage(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetPageImpl<T> &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetPageImplCopyWith<T, _$SetPageImpl<T>> get copyWith =>
      __$$SetPageImplCopyWithImpl<T, _$SetPageImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addJobLoading,
    required TResult Function() addJobSuccess,
    required TResult Function(String error) addJobFailure,
    required TResult Function() categoryAndCityLoading,
    required TResult Function(
            List<CategoryModel> categoryList, List<CityModel> cityList)
        categoryAndCitySuccess,
    required TResult Function(String error) categoryAndCityFailure,
    required TResult Function(int index) updateSteps,
    required TResult Function(int index) setPage,
  }) {
    return setPage(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addJobLoading,
    TResult? Function()? addJobSuccess,
    TResult? Function(String error)? addJobFailure,
    TResult? Function()? categoryAndCityLoading,
    TResult? Function(
            List<CategoryModel> categoryList, List<CityModel> cityList)?
        categoryAndCitySuccess,
    TResult? Function(String error)? categoryAndCityFailure,
    TResult? Function(int index)? updateSteps,
    TResult? Function(int index)? setPage,
  }) {
    return setPage?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addJobLoading,
    TResult Function()? addJobSuccess,
    TResult Function(String error)? addJobFailure,
    TResult Function()? categoryAndCityLoading,
    TResult Function(
            List<CategoryModel> categoryList, List<CityModel> cityList)?
        categoryAndCitySuccess,
    TResult Function(String error)? categoryAndCityFailure,
    TResult Function(int index)? updateSteps,
    TResult Function(int index)? setPage,
    required TResult orElse(),
  }) {
    if (setPage != null) {
      return setPage(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(AddJobLoading<T> value) addJobLoading,
    required TResult Function(AddJobSuccess<T> value) addJobSuccess,
    required TResult Function(AddJobFailure<T> value) addJobFailure,
    required TResult Function(CategoryAndCityLoading<T> value)
        categoryAndCityLoading,
    required TResult Function(CategoryAndCitySuccess<T> value)
        categoryAndCitySuccess,
    required TResult Function(CategoryAndCityFailure<T> value)
        categoryAndCityFailure,
    required TResult Function(UpdateSteps<T> value) updateSteps,
    required TResult Function(SetPage<T> value) setPage,
  }) {
    return setPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(AddJobLoading<T> value)? addJobLoading,
    TResult? Function(AddJobSuccess<T> value)? addJobSuccess,
    TResult? Function(AddJobFailure<T> value)? addJobFailure,
    TResult? Function(CategoryAndCityLoading<T> value)? categoryAndCityLoading,
    TResult? Function(CategoryAndCitySuccess<T> value)? categoryAndCitySuccess,
    TResult? Function(CategoryAndCityFailure<T> value)? categoryAndCityFailure,
    TResult? Function(UpdateSteps<T> value)? updateSteps,
    TResult? Function(SetPage<T> value)? setPage,
  }) {
    return setPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(AddJobLoading<T> value)? addJobLoading,
    TResult Function(AddJobSuccess<T> value)? addJobSuccess,
    TResult Function(AddJobFailure<T> value)? addJobFailure,
    TResult Function(CategoryAndCityLoading<T> value)? categoryAndCityLoading,
    TResult Function(CategoryAndCitySuccess<T> value)? categoryAndCitySuccess,
    TResult Function(CategoryAndCityFailure<T> value)? categoryAndCityFailure,
    TResult Function(UpdateSteps<T> value)? updateSteps,
    TResult Function(SetPage<T> value)? setPage,
    required TResult orElse(),
  }) {
    if (setPage != null) {
      return setPage(this);
    }
    return orElse();
  }
}

abstract class SetPage<T> implements AddJobState<T> {
  const factory SetPage({required final int index}) = _$SetPageImpl<T>;

  int get index;
  @JsonKey(ignore: true)
  _$$SetPageImplCopyWith<T, _$SetPageImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
