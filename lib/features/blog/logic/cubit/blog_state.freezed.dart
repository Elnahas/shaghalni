// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BlogState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() blogLoading,
    required TResult Function(List<BlogModel> blogList) blogSuccess,
    required TResult Function(String error) blogFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? blogLoading,
    TResult? Function(List<BlogModel> blogList)? blogSuccess,
    TResult? Function(String error)? blogFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? blogLoading,
    TResult Function(List<BlogModel> blogList)? blogSuccess,
    TResult Function(String error)? blogFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(BlogLoading value) blogLoading,
    required TResult Function(BlogSuccess value) blogSuccess,
    required TResult Function(BlogFailure value) blogFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BlogLoading value)? blogLoading,
    TResult? Function(BlogSuccess value)? blogSuccess,
    TResult? Function(BlogFailure value)? blogFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BlogLoading value)? blogLoading,
    TResult Function(BlogSuccess value)? blogSuccess,
    TResult Function(BlogFailure value)? blogFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogStateCopyWith<$Res> {
  factory $BlogStateCopyWith(BlogState value, $Res Function(BlogState) then) =
      _$BlogStateCopyWithImpl<$Res, BlogState>;
}

/// @nodoc
class _$BlogStateCopyWithImpl<$Res, $Val extends BlogState>
    implements $BlogStateCopyWith<$Res> {
  _$BlogStateCopyWithImpl(this._value, this._then);

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
    extends _$BlogStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'BlogState.initial()';
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
    required TResult Function() blogLoading,
    required TResult Function(List<BlogModel> blogList) blogSuccess,
    required TResult Function(String error) blogFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? blogLoading,
    TResult? Function(List<BlogModel> blogList)? blogSuccess,
    TResult? Function(String error)? blogFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? blogLoading,
    TResult Function(List<BlogModel> blogList)? blogSuccess,
    TResult Function(String error)? blogFailure,
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
    required TResult Function(BlogLoading value) blogLoading,
    required TResult Function(BlogSuccess value) blogSuccess,
    required TResult Function(BlogFailure value) blogFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BlogLoading value)? blogLoading,
    TResult? Function(BlogSuccess value)? blogSuccess,
    TResult? Function(BlogFailure value)? blogFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BlogLoading value)? blogLoading,
    TResult Function(BlogSuccess value)? blogSuccess,
    TResult Function(BlogFailure value)? blogFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BlogState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$BlogLoadingImplCopyWith<$Res> {
  factory _$$BlogLoadingImplCopyWith(
          _$BlogLoadingImpl value, $Res Function(_$BlogLoadingImpl) then) =
      __$$BlogLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlogLoadingImplCopyWithImpl<$Res>
    extends _$BlogStateCopyWithImpl<$Res, _$BlogLoadingImpl>
    implements _$$BlogLoadingImplCopyWith<$Res> {
  __$$BlogLoadingImplCopyWithImpl(
      _$BlogLoadingImpl _value, $Res Function(_$BlogLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BlogLoadingImpl implements BlogLoading {
  const _$BlogLoadingImpl();

  @override
  String toString() {
    return 'BlogState.blogLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BlogLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() blogLoading,
    required TResult Function(List<BlogModel> blogList) blogSuccess,
    required TResult Function(String error) blogFailure,
  }) {
    return blogLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? blogLoading,
    TResult? Function(List<BlogModel> blogList)? blogSuccess,
    TResult? Function(String error)? blogFailure,
  }) {
    return blogLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? blogLoading,
    TResult Function(List<BlogModel> blogList)? blogSuccess,
    TResult Function(String error)? blogFailure,
    required TResult orElse(),
  }) {
    if (blogLoading != null) {
      return blogLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(BlogLoading value) blogLoading,
    required TResult Function(BlogSuccess value) blogSuccess,
    required TResult Function(BlogFailure value) blogFailure,
  }) {
    return blogLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BlogLoading value)? blogLoading,
    TResult? Function(BlogSuccess value)? blogSuccess,
    TResult? Function(BlogFailure value)? blogFailure,
  }) {
    return blogLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BlogLoading value)? blogLoading,
    TResult Function(BlogSuccess value)? blogSuccess,
    TResult Function(BlogFailure value)? blogFailure,
    required TResult orElse(),
  }) {
    if (blogLoading != null) {
      return blogLoading(this);
    }
    return orElse();
  }
}

abstract class BlogLoading implements BlogState {
  const factory BlogLoading() = _$BlogLoadingImpl;
}

/// @nodoc
abstract class _$$BlogSuccessImplCopyWith<$Res> {
  factory _$$BlogSuccessImplCopyWith(
          _$BlogSuccessImpl value, $Res Function(_$BlogSuccessImpl) then) =
      __$$BlogSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BlogModel> blogList});
}

/// @nodoc
class __$$BlogSuccessImplCopyWithImpl<$Res>
    extends _$BlogStateCopyWithImpl<$Res, _$BlogSuccessImpl>
    implements _$$BlogSuccessImplCopyWith<$Res> {
  __$$BlogSuccessImplCopyWithImpl(
      _$BlogSuccessImpl _value, $Res Function(_$BlogSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blogList = null,
  }) {
    return _then(_$BlogSuccessImpl(
      null == blogList
          ? _value._blogList
          : blogList // ignore: cast_nullable_to_non_nullable
              as List<BlogModel>,
    ));
  }
}

/// @nodoc

class _$BlogSuccessImpl implements BlogSuccess {
  const _$BlogSuccessImpl(final List<BlogModel> blogList)
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
    return 'BlogState.blogSuccess(blogList: $blogList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogSuccessImpl &&
            const DeepCollectionEquality().equals(other._blogList, _blogList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_blogList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogSuccessImplCopyWith<_$BlogSuccessImpl> get copyWith =>
      __$$BlogSuccessImplCopyWithImpl<_$BlogSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() blogLoading,
    required TResult Function(List<BlogModel> blogList) blogSuccess,
    required TResult Function(String error) blogFailure,
  }) {
    return blogSuccess(blogList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? blogLoading,
    TResult? Function(List<BlogModel> blogList)? blogSuccess,
    TResult? Function(String error)? blogFailure,
  }) {
    return blogSuccess?.call(blogList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? blogLoading,
    TResult Function(List<BlogModel> blogList)? blogSuccess,
    TResult Function(String error)? blogFailure,
    required TResult orElse(),
  }) {
    if (blogSuccess != null) {
      return blogSuccess(blogList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(BlogLoading value) blogLoading,
    required TResult Function(BlogSuccess value) blogSuccess,
    required TResult Function(BlogFailure value) blogFailure,
  }) {
    return blogSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BlogLoading value)? blogLoading,
    TResult? Function(BlogSuccess value)? blogSuccess,
    TResult? Function(BlogFailure value)? blogFailure,
  }) {
    return blogSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BlogLoading value)? blogLoading,
    TResult Function(BlogSuccess value)? blogSuccess,
    TResult Function(BlogFailure value)? blogFailure,
    required TResult orElse(),
  }) {
    if (blogSuccess != null) {
      return blogSuccess(this);
    }
    return orElse();
  }
}

abstract class BlogSuccess implements BlogState {
  const factory BlogSuccess(final List<BlogModel> blogList) = _$BlogSuccessImpl;

  List<BlogModel> get blogList;
  @JsonKey(ignore: true)
  _$$BlogSuccessImplCopyWith<_$BlogSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlogFailureImplCopyWith<$Res> {
  factory _$$BlogFailureImplCopyWith(
          _$BlogFailureImpl value, $Res Function(_$BlogFailureImpl) then) =
      __$$BlogFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$BlogFailureImplCopyWithImpl<$Res>
    extends _$BlogStateCopyWithImpl<$Res, _$BlogFailureImpl>
    implements _$$BlogFailureImplCopyWith<$Res> {
  __$$BlogFailureImplCopyWithImpl(
      _$BlogFailureImpl _value, $Res Function(_$BlogFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$BlogFailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BlogFailureImpl implements BlogFailure {
  const _$BlogFailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'BlogState.blogFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogFailureImplCopyWith<_$BlogFailureImpl> get copyWith =>
      __$$BlogFailureImplCopyWithImpl<_$BlogFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() blogLoading,
    required TResult Function(List<BlogModel> blogList) blogSuccess,
    required TResult Function(String error) blogFailure,
  }) {
    return blogFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? blogLoading,
    TResult? Function(List<BlogModel> blogList)? blogSuccess,
    TResult? Function(String error)? blogFailure,
  }) {
    return blogFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? blogLoading,
    TResult Function(List<BlogModel> blogList)? blogSuccess,
    TResult Function(String error)? blogFailure,
    required TResult orElse(),
  }) {
    if (blogFailure != null) {
      return blogFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(BlogLoading value) blogLoading,
    required TResult Function(BlogSuccess value) blogSuccess,
    required TResult Function(BlogFailure value) blogFailure,
  }) {
    return blogFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BlogLoading value)? blogLoading,
    TResult? Function(BlogSuccess value)? blogSuccess,
    TResult? Function(BlogFailure value)? blogFailure,
  }) {
    return blogFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BlogLoading value)? blogLoading,
    TResult Function(BlogSuccess value)? blogSuccess,
    TResult Function(BlogFailure value)? blogFailure,
    required TResult orElse(),
  }) {
    if (blogFailure != null) {
      return blogFailure(this);
    }
    return orElse();
  }
}

abstract class BlogFailure implements BlogState {
  const factory BlogFailure(final String error) = _$BlogFailureImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$BlogFailureImplCopyWith<_$BlogFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
