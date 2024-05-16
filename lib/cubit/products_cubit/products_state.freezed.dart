// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductsState {
  List<Product>? get products => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> products) idle,
    required TResult Function(List<Product> products) success,
    required TResult Function(List<Product> products) loading,
    required TResult Function(Object error, List<Product>? products) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Product> products)? idle,
    TResult? Function(List<Product> products)? success,
    TResult? Function(List<Product> products)? loading,
    TResult? Function(Object error, List<Product>? products)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> products)? idle,
    TResult Function(List<Product> products)? success,
    TResult Function(List<Product> products)? loading,
    TResult Function(Object error, List<Product>? products)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsIdle value) idle,
    required TResult Function(ProductsSuccess value) success,
    required TResult Function(ProductsLoading value) loading,
    required TResult Function(ProductsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductsIdle value)? idle,
    TResult? Function(ProductsSuccess value)? success,
    TResult? Function(ProductsLoading value)? loading,
    TResult? Function(ProductsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsIdle value)? idle,
    TResult Function(ProductsSuccess value)? success,
    TResult Function(ProductsLoading value)? loading,
    TResult Function(ProductsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductsStateCopyWith<ProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res, ProductsState>;
  @useResult
  $Res call({List<Product> products});
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res, $Val extends ProductsState>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products!
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductsIdleImplCopyWith<$Res>
    implements $ProductsStateCopyWith<$Res> {
  factory _$$ProductsIdleImplCopyWith(
          _$ProductsIdleImpl value, $Res Function(_$ProductsIdleImpl) then) =
      __$$ProductsIdleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product> products});
}

/// @nodoc
class __$$ProductsIdleImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ProductsIdleImpl>
    implements _$$ProductsIdleImplCopyWith<$Res> {
  __$$ProductsIdleImplCopyWithImpl(
      _$ProductsIdleImpl _value, $Res Function(_$ProductsIdleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$ProductsIdleImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$ProductsIdleImpl extends ProductsIdle {
  const _$ProductsIdleImpl({required final List<Product> products})
      : _products = products,
        super._();

  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ProductsState.idle(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsIdleImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsIdleImplCopyWith<_$ProductsIdleImpl> get copyWith =>
      __$$ProductsIdleImplCopyWithImpl<_$ProductsIdleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> products) idle,
    required TResult Function(List<Product> products) success,
    required TResult Function(List<Product> products) loading,
    required TResult Function(Object error, List<Product>? products) error,
  }) {
    return idle(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Product> products)? idle,
    TResult? Function(List<Product> products)? success,
    TResult? Function(List<Product> products)? loading,
    TResult? Function(Object error, List<Product>? products)? error,
  }) {
    return idle?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> products)? idle,
    TResult Function(List<Product> products)? success,
    TResult Function(List<Product> products)? loading,
    TResult Function(Object error, List<Product>? products)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsIdle value) idle,
    required TResult Function(ProductsSuccess value) success,
    required TResult Function(ProductsLoading value) loading,
    required TResult Function(ProductsError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductsIdle value)? idle,
    TResult? Function(ProductsSuccess value)? success,
    TResult? Function(ProductsLoading value)? loading,
    TResult? Function(ProductsError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsIdle value)? idle,
    TResult Function(ProductsSuccess value)? success,
    TResult Function(ProductsLoading value)? loading,
    TResult Function(ProductsError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class ProductsIdle extends ProductsState {
  const factory ProductsIdle({required final List<Product> products}) =
      _$ProductsIdleImpl;
  const ProductsIdle._() : super._();

  @override
  List<Product> get products;
  @override
  @JsonKey(ignore: true)
  _$$ProductsIdleImplCopyWith<_$ProductsIdleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductsSuccessImplCopyWith<$Res>
    implements $ProductsStateCopyWith<$Res> {
  factory _$$ProductsSuccessImplCopyWith(_$ProductsSuccessImpl value,
          $Res Function(_$ProductsSuccessImpl) then) =
      __$$ProductsSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product> products});
}

/// @nodoc
class __$$ProductsSuccessImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ProductsSuccessImpl>
    implements _$$ProductsSuccessImplCopyWith<$Res> {
  __$$ProductsSuccessImplCopyWithImpl(
      _$ProductsSuccessImpl _value, $Res Function(_$ProductsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$ProductsSuccessImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$ProductsSuccessImpl extends ProductsSuccess {
  const _$ProductsSuccessImpl({required final List<Product> products})
      : _products = products,
        super._();

  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ProductsState.success(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsSuccessImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsSuccessImplCopyWith<_$ProductsSuccessImpl> get copyWith =>
      __$$ProductsSuccessImplCopyWithImpl<_$ProductsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> products) idle,
    required TResult Function(List<Product> products) success,
    required TResult Function(List<Product> products) loading,
    required TResult Function(Object error, List<Product>? products) error,
  }) {
    return success(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Product> products)? idle,
    TResult? Function(List<Product> products)? success,
    TResult? Function(List<Product> products)? loading,
    TResult? Function(Object error, List<Product>? products)? error,
  }) {
    return success?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> products)? idle,
    TResult Function(List<Product> products)? success,
    TResult Function(List<Product> products)? loading,
    TResult Function(Object error, List<Product>? products)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsIdle value) idle,
    required TResult Function(ProductsSuccess value) success,
    required TResult Function(ProductsLoading value) loading,
    required TResult Function(ProductsError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductsIdle value)? idle,
    TResult? Function(ProductsSuccess value)? success,
    TResult? Function(ProductsLoading value)? loading,
    TResult? Function(ProductsError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsIdle value)? idle,
    TResult Function(ProductsSuccess value)? success,
    TResult Function(ProductsLoading value)? loading,
    TResult Function(ProductsError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ProductsSuccess extends ProductsState {
  const factory ProductsSuccess({required final List<Product> products}) =
      _$ProductsSuccessImpl;
  const ProductsSuccess._() : super._();

  @override
  List<Product> get products;
  @override
  @JsonKey(ignore: true)
  _$$ProductsSuccessImplCopyWith<_$ProductsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductsLoadingImplCopyWith<$Res>
    implements $ProductsStateCopyWith<$Res> {
  factory _$$ProductsLoadingImplCopyWith(_$ProductsLoadingImpl value,
          $Res Function(_$ProductsLoadingImpl) then) =
      __$$ProductsLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product> products});
}

/// @nodoc
class __$$ProductsLoadingImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ProductsLoadingImpl>
    implements _$$ProductsLoadingImplCopyWith<$Res> {
  __$$ProductsLoadingImplCopyWithImpl(
      _$ProductsLoadingImpl _value, $Res Function(_$ProductsLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$ProductsLoadingImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$ProductsLoadingImpl extends ProductsLoading {
  const _$ProductsLoadingImpl({required final List<Product> products})
      : _products = products,
        super._();

  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ProductsState.loading(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsLoadingImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsLoadingImplCopyWith<_$ProductsLoadingImpl> get copyWith =>
      __$$ProductsLoadingImplCopyWithImpl<_$ProductsLoadingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> products) idle,
    required TResult Function(List<Product> products) success,
    required TResult Function(List<Product> products) loading,
    required TResult Function(Object error, List<Product>? products) error,
  }) {
    return loading(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Product> products)? idle,
    TResult? Function(List<Product> products)? success,
    TResult? Function(List<Product> products)? loading,
    TResult? Function(Object error, List<Product>? products)? error,
  }) {
    return loading?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> products)? idle,
    TResult Function(List<Product> products)? success,
    TResult Function(List<Product> products)? loading,
    TResult Function(Object error, List<Product>? products)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsIdle value) idle,
    required TResult Function(ProductsSuccess value) success,
    required TResult Function(ProductsLoading value) loading,
    required TResult Function(ProductsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductsIdle value)? idle,
    TResult? Function(ProductsSuccess value)? success,
    TResult? Function(ProductsLoading value)? loading,
    TResult? Function(ProductsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsIdle value)? idle,
    TResult Function(ProductsSuccess value)? success,
    TResult Function(ProductsLoading value)? loading,
    TResult Function(ProductsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProductsLoading extends ProductsState {
  const factory ProductsLoading({required final List<Product> products}) =
      _$ProductsLoadingImpl;
  const ProductsLoading._() : super._();

  @override
  List<Product> get products;
  @override
  @JsonKey(ignore: true)
  _$$ProductsLoadingImplCopyWith<_$ProductsLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductsErrorImplCopyWith<$Res>
    implements $ProductsStateCopyWith<$Res> {
  factory _$$ProductsErrorImplCopyWith(
          _$ProductsErrorImpl value, $Res Function(_$ProductsErrorImpl) then) =
      __$$ProductsErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object error, List<Product>? products});
}

/// @nodoc
class __$$ProductsErrorImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ProductsErrorImpl>
    implements _$$ProductsErrorImplCopyWith<$Res> {
  __$$ProductsErrorImplCopyWithImpl(
      _$ProductsErrorImpl _value, $Res Function(_$ProductsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? products = freezed,
  }) {
    return _then(_$ProductsErrorImpl(
      error: null == error ? _value.error : error,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ));
  }
}

/// @nodoc

class _$ProductsErrorImpl extends ProductsError {
  const _$ProductsErrorImpl(
      {required this.error, final List<Product>? products})
      : _products = products,
        super._();

  @override
  final Object error;
  final List<Product>? _products;
  @override
  List<Product>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductsState.error(error: $error, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsErrorImplCopyWith<_$ProductsErrorImpl> get copyWith =>
      __$$ProductsErrorImplCopyWithImpl<_$ProductsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> products) idle,
    required TResult Function(List<Product> products) success,
    required TResult Function(List<Product> products) loading,
    required TResult Function(Object error, List<Product>? products) error,
  }) {
    return error(this.error, products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Product> products)? idle,
    TResult? Function(List<Product> products)? success,
    TResult? Function(List<Product> products)? loading,
    TResult? Function(Object error, List<Product>? products)? error,
  }) {
    return error?.call(this.error, products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> products)? idle,
    TResult Function(List<Product> products)? success,
    TResult Function(List<Product> products)? loading,
    TResult Function(Object error, List<Product>? products)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsIdle value) idle,
    required TResult Function(ProductsSuccess value) success,
    required TResult Function(ProductsLoading value) loading,
    required TResult Function(ProductsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductsIdle value)? idle,
    TResult? Function(ProductsSuccess value)? success,
    TResult? Function(ProductsLoading value)? loading,
    TResult? Function(ProductsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsIdle value)? idle,
    TResult Function(ProductsSuccess value)? success,
    TResult Function(ProductsLoading value)? loading,
    TResult Function(ProductsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProductsError extends ProductsState {
  const factory ProductsError(
      {required final Object error,
      final List<Product>? products}) = _$ProductsErrorImpl;
  const ProductsError._() : super._();

  Object get error;
  @override
  List<Product>? get products;
  @override
  @JsonKey(ignore: true)
  _$$ProductsErrorImplCopyWith<_$ProductsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
