// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BlogListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() blogListLoading,
    required TResult Function(List<BlogModel> blogList) blogListSuccess,
    required TResult Function(String error) blogListFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? blogListLoading,
    TResult? Function(List<BlogModel> blogList)? blogListSuccess,
    TResult? Function(String error)? blogListFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? blogListLoading,
    TResult Function(List<BlogModel> blogList)? blogListSuccess,
    TResult Function(String error)? blogListFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(BlogListLoading value) blogListLoading,
    required TResult Function(BlogListSuccess value) blogListSuccess,
    required TResult Function(BlogListFailure value) blogListFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BlogListLoading value)? blogListLoading,
    TResult? Function(BlogListSuccess value)? blogListSuccess,
    TResult? Function(BlogListFailure value)? blogListFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BlogListLoading value)? blogListLoading,
    TResult Function(BlogListSuccess value)? blogListSuccess,
    TResult Function(BlogListFailure value)? blogListFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogListStateCopyWith<$Res> {
  factory $BlogListStateCopyWith(
          BlogListState value, $Res Function(BlogListState) then) =
      _$BlogListStateCopyWithImpl<$Res, BlogListState>;
}

/// @nodoc
class _$BlogListStateCopyWithImpl<$Res, $Val extends BlogListState>
    implements $BlogListStateCopyWith<$Res> {
  _$BlogListStateCopyWithImpl(this._value, this._then);

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
    extends _$BlogListStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'BlogListState.initial()';
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
    required TResult Function() blogListLoading,
    required TResult Function(List<BlogModel> blogList) blogListSuccess,
    required TResult Function(String error) blogListFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? blogListLoading,
    TResult? Function(List<BlogModel> blogList)? blogListSuccess,
    TResult? Function(String error)? blogListFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? blogListLoading,
    TResult Function(List<BlogModel> blogList)? blogListSuccess,
    TResult Function(String error)? blogListFailure,
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
    required TResult Function(BlogListLoading value) blogListLoading,
    required TResult Function(BlogListSuccess value) blogListSuccess,
    required TResult Function(BlogListFailure value) blogListFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BlogListLoading value)? blogListLoading,
    TResult? Function(BlogListSuccess value)? blogListSuccess,
    TResult? Function(BlogListFailure value)? blogListFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BlogListLoading value)? blogListLoading,
    TResult Function(BlogListSuccess value)? blogListSuccess,
    TResult Function(BlogListFailure value)? blogListFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BlogListState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$BlogListLoadingImplCopyWith<$Res> {
  factory _$$BlogListLoadingImplCopyWith(_$BlogListLoadingImpl value,
          $Res Function(_$BlogListLoadingImpl) then) =
      __$$BlogListLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlogListLoadingImplCopyWithImpl<$Res>
    extends _$BlogListStateCopyWithImpl<$Res, _$BlogListLoadingImpl>
    implements _$$BlogListLoadingImplCopyWith<$Res> {
  __$$BlogListLoadingImplCopyWithImpl(
      _$BlogListLoadingImpl _value, $Res Function(_$BlogListLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BlogListLoadingImpl implements BlogListLoading {
  const _$BlogListLoadingImpl();

  @override
  String toString() {
    return 'BlogListState.blogListLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BlogListLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() blogListLoading,
    required TResult Function(List<BlogModel> blogList) blogListSuccess,
    required TResult Function(String error) blogListFailure,
  }) {
    return blogListLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? blogListLoading,
    TResult? Function(List<BlogModel> blogList)? blogListSuccess,
    TResult? Function(String error)? blogListFailure,
  }) {
    return blogListLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? blogListLoading,
    TResult Function(List<BlogModel> blogList)? blogListSuccess,
    TResult Function(String error)? blogListFailure,
    required TResult orElse(),
  }) {
    if (blogListLoading != null) {
      return blogListLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(BlogListLoading value) blogListLoading,
    required TResult Function(BlogListSuccess value) blogListSuccess,
    required TResult Function(BlogListFailure value) blogListFailure,
  }) {
    return blogListLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BlogListLoading value)? blogListLoading,
    TResult? Function(BlogListSuccess value)? blogListSuccess,
    TResult? Function(BlogListFailure value)? blogListFailure,
  }) {
    return blogListLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BlogListLoading value)? blogListLoading,
    TResult Function(BlogListSuccess value)? blogListSuccess,
    TResult Function(BlogListFailure value)? blogListFailure,
    required TResult orElse(),
  }) {
    if (blogListLoading != null) {
      return blogListLoading(this);
    }
    return orElse();
  }
}

abstract class BlogListLoading implements BlogListState {
  const factory BlogListLoading() = _$BlogListLoadingImpl;
}

/// @nodoc
abstract class _$$BlogListSuccessImplCopyWith<$Res> {
  factory _$$BlogListSuccessImplCopyWith(_$BlogListSuccessImpl value,
          $Res Function(_$BlogListSuccessImpl) then) =
      __$$BlogListSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BlogModel> blogList});
}

/// @nodoc
class __$$BlogListSuccessImplCopyWithImpl<$Res>
    extends _$BlogListStateCopyWithImpl<$Res, _$BlogListSuccessImpl>
    implements _$$BlogListSuccessImplCopyWith<$Res> {
  __$$BlogListSuccessImplCopyWithImpl(
      _$BlogListSuccessImpl _value, $Res Function(_$BlogListSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blogList = null,
  }) {
    return _then(_$BlogListSuccessImpl(
      null == blogList
          ? _value._blogList
          : blogList // ignore: cast_nullable_to_non_nullable
              as List<BlogModel>,
    ));
  }
}

/// @nodoc

class _$BlogListSuccessImpl implements BlogListSuccess {
  const _$BlogListSuccessImpl(final List<BlogModel> blogList)
      : _blogList = blogList;

  final List<BlogModel> _blogList;
  @override
  List<BlogModel> get blogList {
    if (_blogList is EqualUnmodifiableListView) return _blogList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blogList);
  }

  @override
  String toString() {
    return 'BlogListState.blogListSuccess(blogList: $blogList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogListSuccessImpl &&
            const DeepCollectionEquality().equals(other._blogList, _blogList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_blogList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogListSuccessImplCopyWith<_$BlogListSuccessImpl> get copyWith =>
      __$$BlogListSuccessImplCopyWithImpl<_$BlogListSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() blogListLoading,
    required TResult Function(List<BlogModel> blogList) blogListSuccess,
    required TResult Function(String error) blogListFailure,
  }) {
    return blogListSuccess(blogList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? blogListLoading,
    TResult? Function(List<BlogModel> blogList)? blogListSuccess,
    TResult? Function(String error)? blogListFailure,
  }) {
    return blogListSuccess?.call(blogList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? blogListLoading,
    TResult Function(List<BlogModel> blogList)? blogListSuccess,
    TResult Function(String error)? blogListFailure,
    required TResult orElse(),
  }) {
    if (blogListSuccess != null) {
      return blogListSuccess(blogList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(BlogListLoading value) blogListLoading,
    required TResult Function(BlogListSuccess value) blogListSuccess,
    required TResult Function(BlogListFailure value) blogListFailure,
  }) {
    return blogListSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BlogListLoading value)? blogListLoading,
    TResult? Function(BlogListSuccess value)? blogListSuccess,
    TResult? Function(BlogListFailure value)? blogListFailure,
  }) {
    return blogListSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BlogListLoading value)? blogListLoading,
    TResult Function(BlogListSuccess value)? blogListSuccess,
    TResult Function(BlogListFailure value)? blogListFailure,
    required TResult orElse(),
  }) {
    if (blogListSuccess != null) {
      return blogListSuccess(this);
    }
    return orElse();
  }
}

abstract class BlogListSuccess implements BlogListState {
  const factory BlogListSuccess(final List<BlogModel> blogList) =
      _$BlogListSuccessImpl;

  List<BlogModel> get blogList;
  @JsonKey(ignore: true)
  _$$BlogListSuccessImplCopyWith<_$BlogListSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlogListFailureImplCopyWith<$Res> {
  factory _$$BlogListFailureImplCopyWith(_$BlogListFailureImpl value,
          $Res Function(_$BlogListFailureImpl) then) =
      __$$BlogListFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$BlogListFailureImplCopyWithImpl<$Res>
    extends _$BlogListStateCopyWithImpl<$Res, _$BlogListFailureImpl>
    implements _$$BlogListFailureImplCopyWith<$Res> {
  __$$BlogListFailureImplCopyWithImpl(
      _$BlogListFailureImpl _value, $Res Function(_$BlogListFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$BlogListFailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BlogListFailureImpl implements BlogListFailure {
  const _$BlogListFailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'BlogListState.blogListFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogListFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogListFailureImplCopyWith<_$BlogListFailureImpl> get copyWith =>
      __$$BlogListFailureImplCopyWithImpl<_$BlogListFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() blogListLoading,
    required TResult Function(List<BlogModel> blogList) blogListSuccess,
    required TResult Function(String error) blogListFailure,
  }) {
    return blogListFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? blogListLoading,
    TResult? Function(List<BlogModel> blogList)? blogListSuccess,
    TResult? Function(String error)? blogListFailure,
  }) {
    return blogListFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? blogListLoading,
    TResult Function(List<BlogModel> blogList)? blogListSuccess,
    TResult Function(String error)? blogListFailure,
    required TResult orElse(),
  }) {
    if (blogListFailure != null) {
      return blogListFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(BlogListLoading value) blogListLoading,
    required TResult Function(BlogListSuccess value) blogListSuccess,
    required TResult Function(BlogListFailure value) blogListFailure,
  }) {
    return blogListFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BlogListLoading value)? blogListLoading,
    TResult? Function(BlogListSuccess value)? blogListSuccess,
    TResult? Function(BlogListFailure value)? blogListFailure,
  }) {
    return blogListFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BlogListLoading value)? blogListLoading,
    TResult Function(BlogListSuccess value)? blogListSuccess,
    TResult Function(BlogListFailure value)? blogListFailure,
    required TResult orElse(),
  }) {
    if (blogListFailure != null) {
      return blogListFailure(this);
    }
    return orElse();
  }
}

abstract class BlogListFailure implements BlogListState {
  const factory BlogListFailure(final String error) = _$BlogListFailureImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$BlogListFailureImplCopyWith<_$BlogListFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
