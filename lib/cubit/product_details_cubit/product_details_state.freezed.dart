// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Product product) success,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Product product)? success,
    TResult? Function(Object error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Product product)? success,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductDetailsInitial value) initial,
    required TResult Function(ProductDetailsLoading value) loading,
    required TResult Function(ProductDetailsSuccess value) success,
    required TResult Function(ProductDetailsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductDetailsInitial value)? initial,
    TResult? Function(ProductDetailsLoading value)? loading,
    TResult? Function(ProductDetailsSuccess value)? success,
    TResult? Function(ProductDetailsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductDetailsInitial value)? initial,
    TResult Function(ProductDetailsLoading value)? loading,
    TResult Function(ProductDetailsSuccess value)? success,
    TResult Function(ProductDetailsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsStateCopyWith<$Res> {
  factory $ProductDetailsStateCopyWith(
          ProductDetailsState value, $Res Function(ProductDetailsState) then) =
      _$ProductDetailsStateCopyWithImpl<$Res, ProductDetailsState>;
}

/// @nodoc
class _$ProductDetailsStateCopyWithImpl<$Res, $Val extends ProductDetailsState>
    implements $ProductDetailsStateCopyWith<$Res> {
  _$ProductDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProductDetailsInitialImplCopyWith<$Res> {
  factory _$$ProductDetailsInitialImplCopyWith(
          _$ProductDetailsInitialImpl value,
          $Res Function(_$ProductDetailsInitialImpl) then) =
      __$$ProductDetailsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductDetailsInitialImplCopyWithImpl<$Res>
    extends _$ProductDetailsStateCopyWithImpl<$Res, _$ProductDetailsInitialImpl>
    implements _$$ProductDetailsInitialImplCopyWith<$Res> {
  __$$ProductDetailsInitialImplCopyWithImpl(_$ProductDetailsInitialImpl _value,
      $Res Function(_$ProductDetailsInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProductDetailsInitialImpl implements ProductDetailsInitial {
  const _$ProductDetailsInitialImpl();

  @override
  String toString() {
    return 'ProductDetailsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Product product) success,
    required TResult Function(Object error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Product product)? success,
    TResult? Function(Object error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Product product)? success,
    TResult Function(Object error)? error,
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
    required TResult Function(ProductDetailsInitial value) initial,
    required TResult Function(ProductDetailsLoading value) loading,
    required TResult Function(ProductDetailsSuccess value) success,
    required TResult Function(ProductDetailsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductDetailsInitial value)? initial,
    TResult? Function(ProductDetailsLoading value)? loading,
    TResult? Function(ProductDetailsSuccess value)? success,
    TResult? Function(ProductDetailsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductDetailsInitial value)? initial,
    TResult Function(ProductDetailsLoading value)? loading,
    TResult Function(ProductDetailsSuccess value)? success,
    TResult Function(ProductDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProductDetailsInitial implements ProductDetailsState {
  const factory ProductDetailsInitial() = _$ProductDetailsInitialImpl;
}

/// @nodoc
abstract class _$$ProductDetailsLoadingImplCopyWith<$Res> {
  factory _$$ProductDetailsLoadingImplCopyWith(
          _$ProductDetailsLoadingImpl value,
          $Res Function(_$ProductDetailsLoadingImpl) then) =
      __$$ProductDetailsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductDetailsLoadingImplCopyWithImpl<$Res>
    extends _$ProductDetailsStateCopyWithImpl<$Res, _$ProductDetailsLoadingImpl>
    implements _$$ProductDetailsLoadingImplCopyWith<$Res> {
  __$$ProductDetailsLoadingImplCopyWithImpl(_$ProductDetailsLoadingImpl _value,
      $Res Function(_$ProductDetailsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProductDetailsLoadingImpl implements ProductDetailsLoading {
  const _$ProductDetailsLoadingImpl();

  @override
  String toString() {
    return 'ProductDetailsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Product product) success,
    required TResult Function(Object error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Product product)? success,
    TResult? Function(Object error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Product product)? success,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductDetailsInitial value) initial,
    required TResult Function(ProductDetailsLoading value) loading,
    required TResult Function(ProductDetailsSuccess value) success,
    required TResult Function(ProductDetailsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductDetailsInitial value)? initial,
    TResult? Function(ProductDetailsLoading value)? loading,
    TResult? Function(ProductDetailsSuccess value)? success,
    TResult? Function(ProductDetailsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductDetailsInitial value)? initial,
    TResult Function(ProductDetailsLoading value)? loading,
    TResult Function(ProductDetailsSuccess value)? success,
    TResult Function(ProductDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProductDetailsLoading implements ProductDetailsState {
  const factory ProductDetailsLoading() = _$ProductDetailsLoadingImpl;
}

/// @nodoc
abstract class _$$ProductDetailsSuccessImplCopyWith<$Res> {
  factory _$$ProductDetailsSuccessImplCopyWith(
          _$ProductDetailsSuccessImpl value,
          $Res Function(_$ProductDetailsSuccessImpl) then) =
      __$$ProductDetailsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$ProductDetailsSuccessImplCopyWithImpl<$Res>
    extends _$ProductDetailsStateCopyWithImpl<$Res, _$ProductDetailsSuccessImpl>
    implements _$$ProductDetailsSuccessImplCopyWith<$Res> {
  __$$ProductDetailsSuccessImplCopyWithImpl(_$ProductDetailsSuccessImpl _value,
      $Res Function(_$ProductDetailsSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$ProductDetailsSuccessImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  /// Create a copy of ProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$ProductDetailsSuccessImpl implements ProductDetailsSuccess {
  const _$ProductDetailsSuccessImpl({required this.product});

  @override
  final Product product;

  @override
  String toString() {
    return 'ProductDetailsState.success(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailsSuccessImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of ProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailsSuccessImplCopyWith<_$ProductDetailsSuccessImpl>
      get copyWith => __$$ProductDetailsSuccessImplCopyWithImpl<
          _$ProductDetailsSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Product product) success,
    required TResult Function(Object error) error,
  }) {
    return success(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Product product)? success,
    TResult? Function(Object error)? error,
  }) {
    return success?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Product product)? success,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductDetailsInitial value) initial,
    required TResult Function(ProductDetailsLoading value) loading,
    required TResult Function(ProductDetailsSuccess value) success,
    required TResult Function(ProductDetailsError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductDetailsInitial value)? initial,
    TResult? Function(ProductDetailsLoading value)? loading,
    TResult? Function(ProductDetailsSuccess value)? success,
    TResult? Function(ProductDetailsError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductDetailsInitial value)? initial,
    TResult Function(ProductDetailsLoading value)? loading,
    TResult Function(ProductDetailsSuccess value)? success,
    TResult Function(ProductDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ProductDetailsSuccess implements ProductDetailsState {
  const factory ProductDetailsSuccess({required final Product product}) =
      _$ProductDetailsSuccessImpl;

  Product get product;

  /// Create a copy of ProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDetailsSuccessImplCopyWith<_$ProductDetailsSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductDetailsErrorImplCopyWith<$Res> {
  factory _$$ProductDetailsErrorImplCopyWith(_$ProductDetailsErrorImpl value,
          $Res Function(_$ProductDetailsErrorImpl) then) =
      __$$ProductDetailsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$ProductDetailsErrorImplCopyWithImpl<$Res>
    extends _$ProductDetailsStateCopyWithImpl<$Res, _$ProductDetailsErrorImpl>
    implements _$$ProductDetailsErrorImplCopyWith<$Res> {
  __$$ProductDetailsErrorImplCopyWithImpl(_$ProductDetailsErrorImpl _value,
      $Res Function(_$ProductDetailsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ProductDetailsErrorImpl(
      error: null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$ProductDetailsErrorImpl implements ProductDetailsError {
  const _$ProductDetailsErrorImpl({required this.error});

  @override
  final Object error;

  @override
  String toString() {
    return 'ProductDetailsState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailsErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  /// Create a copy of ProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailsErrorImplCopyWith<_$ProductDetailsErrorImpl> get copyWith =>
      __$$ProductDetailsErrorImplCopyWithImpl<_$ProductDetailsErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Product product) success,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Product product)? success,
    TResult? Function(Object error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Product product)? success,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductDetailsInitial value) initial,
    required TResult Function(ProductDetailsLoading value) loading,
    required TResult Function(ProductDetailsSuccess value) success,
    required TResult Function(ProductDetailsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductDetailsInitial value)? initial,
    TResult? Function(ProductDetailsLoading value)? loading,
    TResult? Function(ProductDetailsSuccess value)? success,
    TResult? Function(ProductDetailsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductDetailsInitial value)? initial,
    TResult Function(ProductDetailsLoading value)? loading,
    TResult Function(ProductDetailsSuccess value)? success,
    TResult Function(ProductDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProductDetailsError implements ProductDetailsState {
  const factory ProductDetailsError({required final Object error}) =
      _$ProductDetailsErrorImpl;

  Object get error;

  /// Create a copy of ProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDetailsErrorImplCopyWith<_$ProductDetailsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
