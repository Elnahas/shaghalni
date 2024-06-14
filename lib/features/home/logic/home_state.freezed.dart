// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesAndJobsLoading,
    required TResult Function(
            List<CategoryModel> categoryModel, List<JobModel> jobs)
        categoriesAndJobsSuccess,
    required TResult Function(String error) categoriesAndJobsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesAndJobsLoading,
    TResult? Function(List<CategoryModel> categoryModel, List<JobModel> jobs)?
        categoriesAndJobsSuccess,
    TResult? Function(String error)? categoriesAndJobsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesAndJobsLoading,
    TResult Function(List<CategoryModel> categoryModel, List<JobModel> jobs)?
        categoriesAndJobsSuccess,
    TResult Function(String error)? categoriesAndJobsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoriesAndJobsLoading value)
        categoriesAndJobsLoading,
    required TResult Function(CategoriesAndJobsSuccess value)
        categoriesAndJobsSuccess,
    required TResult Function(CategoriesAndJobsFailure value)
        categoriesAndJobsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoriesAndJobsLoading value)? categoriesAndJobsLoading,
    TResult? Function(CategoriesAndJobsSuccess value)? categoriesAndJobsSuccess,
    TResult? Function(CategoriesAndJobsFailure value)? categoriesAndJobsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesAndJobsLoading value)? categoriesAndJobsLoading,
    TResult Function(CategoriesAndJobsSuccess value)? categoriesAndJobsSuccess,
    TResult Function(CategoriesAndJobsFailure value)? categoriesAndJobsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

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
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'HomeState.initial()';
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
    required TResult Function() categoriesAndJobsLoading,
    required TResult Function(
            List<CategoryModel> categoryModel, List<JobModel> jobs)
        categoriesAndJobsSuccess,
    required TResult Function(String error) categoriesAndJobsFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesAndJobsLoading,
    TResult? Function(List<CategoryModel> categoryModel, List<JobModel> jobs)?
        categoriesAndJobsSuccess,
    TResult? Function(String error)? categoriesAndJobsFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesAndJobsLoading,
    TResult Function(List<CategoryModel> categoryModel, List<JobModel> jobs)?
        categoriesAndJobsSuccess,
    TResult Function(String error)? categoriesAndJobsFailure,
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
    required TResult Function(CategoriesAndJobsLoading value)
        categoriesAndJobsLoading,
    required TResult Function(CategoriesAndJobsSuccess value)
        categoriesAndJobsSuccess,
    required TResult Function(CategoriesAndJobsFailure value)
        categoriesAndJobsFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoriesAndJobsLoading value)? categoriesAndJobsLoading,
    TResult? Function(CategoriesAndJobsSuccess value)? categoriesAndJobsSuccess,
    TResult? Function(CategoriesAndJobsFailure value)? categoriesAndJobsFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesAndJobsLoading value)? categoriesAndJobsLoading,
    TResult Function(CategoriesAndJobsSuccess value)? categoriesAndJobsSuccess,
    TResult Function(CategoriesAndJobsFailure value)? categoriesAndJobsFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CategoriesAndJobsLoadingImplCopyWith<$Res> {
  factory _$$CategoriesAndJobsLoadingImplCopyWith(
          _$CategoriesAndJobsLoadingImpl value,
          $Res Function(_$CategoriesAndJobsLoadingImpl) then) =
      __$$CategoriesAndJobsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoriesAndJobsLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$CategoriesAndJobsLoadingImpl>
    implements _$$CategoriesAndJobsLoadingImplCopyWith<$Res> {
  __$$CategoriesAndJobsLoadingImplCopyWithImpl(
      _$CategoriesAndJobsLoadingImpl _value,
      $Res Function(_$CategoriesAndJobsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CategoriesAndJobsLoadingImpl implements CategoriesAndJobsLoading {
  const _$CategoriesAndJobsLoadingImpl();

  @override
  String toString() {
    return 'HomeState.categoriesAndJobsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesAndJobsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesAndJobsLoading,
    required TResult Function(
            List<CategoryModel> categoryModel, List<JobModel> jobs)
        categoriesAndJobsSuccess,
    required TResult Function(String error) categoriesAndJobsFailure,
  }) {
    return categoriesAndJobsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesAndJobsLoading,
    TResult? Function(List<CategoryModel> categoryModel, List<JobModel> jobs)?
        categoriesAndJobsSuccess,
    TResult? Function(String error)? categoriesAndJobsFailure,
  }) {
    return categoriesAndJobsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesAndJobsLoading,
    TResult Function(List<CategoryModel> categoryModel, List<JobModel> jobs)?
        categoriesAndJobsSuccess,
    TResult Function(String error)? categoriesAndJobsFailure,
    required TResult orElse(),
  }) {
    if (categoriesAndJobsLoading != null) {
      return categoriesAndJobsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoriesAndJobsLoading value)
        categoriesAndJobsLoading,
    required TResult Function(CategoriesAndJobsSuccess value)
        categoriesAndJobsSuccess,
    required TResult Function(CategoriesAndJobsFailure value)
        categoriesAndJobsFailure,
  }) {
    return categoriesAndJobsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoriesAndJobsLoading value)? categoriesAndJobsLoading,
    TResult? Function(CategoriesAndJobsSuccess value)? categoriesAndJobsSuccess,
    TResult? Function(CategoriesAndJobsFailure value)? categoriesAndJobsFailure,
  }) {
    return categoriesAndJobsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesAndJobsLoading value)? categoriesAndJobsLoading,
    TResult Function(CategoriesAndJobsSuccess value)? categoriesAndJobsSuccess,
    TResult Function(CategoriesAndJobsFailure value)? categoriesAndJobsFailure,
    required TResult orElse(),
  }) {
    if (categoriesAndJobsLoading != null) {
      return categoriesAndJobsLoading(this);
    }
    return orElse();
  }
}

abstract class CategoriesAndJobsLoading implements HomeState {
  const factory CategoriesAndJobsLoading() = _$CategoriesAndJobsLoadingImpl;
}

/// @nodoc
abstract class _$$CategoriesAndJobsSuccessImplCopyWith<$Res> {
  factory _$$CategoriesAndJobsSuccessImplCopyWith(
          _$CategoriesAndJobsSuccessImpl value,
          $Res Function(_$CategoriesAndJobsSuccessImpl) then) =
      __$$CategoriesAndJobsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CategoryModel> categoryModel, List<JobModel> jobs});
}

/// @nodoc
class __$$CategoriesAndJobsSuccessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$CategoriesAndJobsSuccessImpl>
    implements _$$CategoriesAndJobsSuccessImplCopyWith<$Res> {
  __$$CategoriesAndJobsSuccessImplCopyWithImpl(
      _$CategoriesAndJobsSuccessImpl _value,
      $Res Function(_$CategoriesAndJobsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryModel = null,
    Object? jobs = null,
  }) {
    return _then(_$CategoriesAndJobsSuccessImpl(
      null == categoryModel
          ? _value._categoryModel
          : categoryModel // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      null == jobs
          ? _value._jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<JobModel>,
    ));
  }
}

/// @nodoc

class _$CategoriesAndJobsSuccessImpl implements CategoriesAndJobsSuccess {
  const _$CategoriesAndJobsSuccessImpl(
      final List<CategoryModel> categoryModel, final List<JobModel> jobs)
      : _categoryModel = categoryModel,
        _jobs = jobs;

  final List<CategoryModel> _categoryModel;
  @override
  List<CategoryModel> get categoryModel {
    if (_categoryModel is EqualUnmodifiableListView) return _categoryModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryModel);
  }

  final List<JobModel> _jobs;
  @override
  List<JobModel> get jobs {
    if (_jobs is EqualUnmodifiableListView) return _jobs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_jobs);
  }

  @override
  String toString() {
    return 'HomeState.categoriesAndJobsSuccess(categoryModel: $categoryModel, jobs: $jobs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesAndJobsSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._categoryModel, _categoryModel) &&
            const DeepCollectionEquality().equals(other._jobs, _jobs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categoryModel),
      const DeepCollectionEquality().hash(_jobs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesAndJobsSuccessImplCopyWith<_$CategoriesAndJobsSuccessImpl>
      get copyWith => __$$CategoriesAndJobsSuccessImplCopyWithImpl<
          _$CategoriesAndJobsSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesAndJobsLoading,
    required TResult Function(
            List<CategoryModel> categoryModel, List<JobModel> jobs)
        categoriesAndJobsSuccess,
    required TResult Function(String error) categoriesAndJobsFailure,
  }) {
    return categoriesAndJobsSuccess(categoryModel, jobs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesAndJobsLoading,
    TResult? Function(List<CategoryModel> categoryModel, List<JobModel> jobs)?
        categoriesAndJobsSuccess,
    TResult? Function(String error)? categoriesAndJobsFailure,
  }) {
    return categoriesAndJobsSuccess?.call(categoryModel, jobs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesAndJobsLoading,
    TResult Function(List<CategoryModel> categoryModel, List<JobModel> jobs)?
        categoriesAndJobsSuccess,
    TResult Function(String error)? categoriesAndJobsFailure,
    required TResult orElse(),
  }) {
    if (categoriesAndJobsSuccess != null) {
      return categoriesAndJobsSuccess(categoryModel, jobs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoriesAndJobsLoading value)
        categoriesAndJobsLoading,
    required TResult Function(CategoriesAndJobsSuccess value)
        categoriesAndJobsSuccess,
    required TResult Function(CategoriesAndJobsFailure value)
        categoriesAndJobsFailure,
  }) {
    return categoriesAndJobsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoriesAndJobsLoading value)? categoriesAndJobsLoading,
    TResult? Function(CategoriesAndJobsSuccess value)? categoriesAndJobsSuccess,
    TResult? Function(CategoriesAndJobsFailure value)? categoriesAndJobsFailure,
  }) {
    return categoriesAndJobsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesAndJobsLoading value)? categoriesAndJobsLoading,
    TResult Function(CategoriesAndJobsSuccess value)? categoriesAndJobsSuccess,
    TResult Function(CategoriesAndJobsFailure value)? categoriesAndJobsFailure,
    required TResult orElse(),
  }) {
    if (categoriesAndJobsSuccess != null) {
      return categoriesAndJobsSuccess(this);
    }
    return orElse();
  }
}

abstract class CategoriesAndJobsSuccess implements HomeState {
  const factory CategoriesAndJobsSuccess(
          final List<CategoryModel> categoryModel, final List<JobModel> jobs) =
      _$CategoriesAndJobsSuccessImpl;

  List<CategoryModel> get categoryModel;
  List<JobModel> get jobs;
  @JsonKey(ignore: true)
  _$$CategoriesAndJobsSuccessImplCopyWith<_$CategoriesAndJobsSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoriesAndJobsFailureImplCopyWith<$Res> {
  factory _$$CategoriesAndJobsFailureImplCopyWith(
          _$CategoriesAndJobsFailureImpl value,
          $Res Function(_$CategoriesAndJobsFailureImpl) then) =
      __$$CategoriesAndJobsFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$CategoriesAndJobsFailureImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$CategoriesAndJobsFailureImpl>
    implements _$$CategoriesAndJobsFailureImplCopyWith<$Res> {
  __$$CategoriesAndJobsFailureImplCopyWithImpl(
      _$CategoriesAndJobsFailureImpl _value,
      $Res Function(_$CategoriesAndJobsFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CategoriesAndJobsFailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CategoriesAndJobsFailureImpl implements CategoriesAndJobsFailure {
  const _$CategoriesAndJobsFailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'HomeState.categoriesAndJobsFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesAndJobsFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesAndJobsFailureImplCopyWith<_$CategoriesAndJobsFailureImpl>
      get copyWith => __$$CategoriesAndJobsFailureImplCopyWithImpl<
          _$CategoriesAndJobsFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesAndJobsLoading,
    required TResult Function(
            List<CategoryModel> categoryModel, List<JobModel> jobs)
        categoriesAndJobsSuccess,
    required TResult Function(String error) categoriesAndJobsFailure,
  }) {
    return categoriesAndJobsFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesAndJobsLoading,
    TResult? Function(List<CategoryModel> categoryModel, List<JobModel> jobs)?
        categoriesAndJobsSuccess,
    TResult? Function(String error)? categoriesAndJobsFailure,
  }) {
    return categoriesAndJobsFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesAndJobsLoading,
    TResult Function(List<CategoryModel> categoryModel, List<JobModel> jobs)?
        categoriesAndJobsSuccess,
    TResult Function(String error)? categoriesAndJobsFailure,
    required TResult orElse(),
  }) {
    if (categoriesAndJobsFailure != null) {
      return categoriesAndJobsFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoriesAndJobsLoading value)
        categoriesAndJobsLoading,
    required TResult Function(CategoriesAndJobsSuccess value)
        categoriesAndJobsSuccess,
    required TResult Function(CategoriesAndJobsFailure value)
        categoriesAndJobsFailure,
  }) {
    return categoriesAndJobsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoriesAndJobsLoading value)? categoriesAndJobsLoading,
    TResult? Function(CategoriesAndJobsSuccess value)? categoriesAndJobsSuccess,
    TResult? Function(CategoriesAndJobsFailure value)? categoriesAndJobsFailure,
  }) {
    return categoriesAndJobsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesAndJobsLoading value)? categoriesAndJobsLoading,
    TResult Function(CategoriesAndJobsSuccess value)? categoriesAndJobsSuccess,
    TResult Function(CategoriesAndJobsFailure value)? categoriesAndJobsFailure,
    required TResult orElse(),
  }) {
    if (categoriesAndJobsFailure != null) {
      return categoriesAndJobsFailure(this);
    }
    return orElse();
  }
}

abstract class CategoriesAndJobsFailure implements HomeState {
  const factory CategoriesAndJobsFailure(final String error) =
      _$CategoriesAndJobsFailureImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$CategoriesAndJobsFailureImplCopyWith<_$CategoriesAndJobsFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
