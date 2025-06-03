// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartState {
  Cart? get cart => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Cart cart) idle,
    required TResult Function(Cart cart) success,
    required TResult Function(Cart cart) loading,
    required TResult Function(Object error, Cart? cart) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Cart cart)? idle,
    TResult? Function(Cart cart)? success,
    TResult? Function(Cart cart)? loading,
    TResult? Function(Object error, Cart? cart)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Cart cart)? idle,
    TResult Function(Cart cart)? success,
    TResult Function(Cart cart)? loading,
    TResult Function(Object error, Cart? cart)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartIdle value) idle,
    required TResult Function(CartSuccess value) success,
    required TResult Function(CartLoading value) loading,
    required TResult Function(CartError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartIdle value)? idle,
    TResult? Function(CartSuccess value)? success,
    TResult? Function(CartLoading value)? loading,
    TResult? Function(CartError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartIdle value)? idle,
    TResult Function(CartSuccess value)? success,
    TResult Function(CartLoading value)? loading,
    TResult Function(CartError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call({Cart cart});

  $CartCopyWith<$Res>? get cart;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cart = null,
  }) {
    return _then(_value.copyWith(
      cart: null == cart
          ? _value.cart!
          : cart // ignore: cast_nullable_to_non_nullable
              as Cart,
    ) as $Val);
  }

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CartCopyWith<$Res>? get cart {
    if (_value.cart == null) {
      return null;
    }

    return $CartCopyWith<$Res>(_value.cart!, (value) {
      return _then(_value.copyWith(cart: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartIdleImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$CartIdleImplCopyWith(
          _$CartIdleImpl value, $Res Function(_$CartIdleImpl) then) =
      __$$CartIdleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Cart cart});

  @override
  $CartCopyWith<$Res> get cart;
}

/// @nodoc
class __$$CartIdleImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartIdleImpl>
    implements _$$CartIdleImplCopyWith<$Res> {
  __$$CartIdleImplCopyWithImpl(
      _$CartIdleImpl _value, $Res Function(_$CartIdleImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cart = null,
  }) {
    return _then(_$CartIdleImpl(
      cart: null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as Cart,
    ));
  }

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CartCopyWith<$Res> get cart {
    return $CartCopyWith<$Res>(_value.cart, (value) {
      return _then(_value.copyWith(cart: value));
    });
  }
}

/// @nodoc

class _$CartIdleImpl extends CartIdle {
  const _$CartIdleImpl({required this.cart}) : super._();

  @override
  final Cart cart;

  @override
  String toString() {
    return 'CartState.idle(cart: $cart)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartIdleImpl &&
            (identical(other.cart, cart) || other.cart == cart));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cart);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartIdleImplCopyWith<_$CartIdleImpl> get copyWith =>
      __$$CartIdleImplCopyWithImpl<_$CartIdleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Cart cart) idle,
    required TResult Function(Cart cart) success,
    required TResult Function(Cart cart) loading,
    required TResult Function(Object error, Cart? cart) error,
  }) {
    return idle(cart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Cart cart)? idle,
    TResult? Function(Cart cart)? success,
    TResult? Function(Cart cart)? loading,
    TResult? Function(Object error, Cart? cart)? error,
  }) {
    return idle?.call(cart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Cart cart)? idle,
    TResult Function(Cart cart)? success,
    TResult Function(Cart cart)? loading,
    TResult Function(Object error, Cart? cart)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(cart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartIdle value) idle,
    required TResult Function(CartSuccess value) success,
    required TResult Function(CartLoading value) loading,
    required TResult Function(CartError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartIdle value)? idle,
    TResult? Function(CartSuccess value)? success,
    TResult? Function(CartLoading value)? loading,
    TResult? Function(CartError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartIdle value)? idle,
    TResult Function(CartSuccess value)? success,
    TResult Function(CartLoading value)? loading,
    TResult Function(CartError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class CartIdle extends CartState {
  const factory CartIdle({required final Cart cart}) = _$CartIdleImpl;
  const CartIdle._() : super._();

  @override
  Cart get cart;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartIdleImplCopyWith<_$CartIdleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartSuccessImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$CartSuccessImplCopyWith(
          _$CartSuccessImpl value, $Res Function(_$CartSuccessImpl) then) =
      __$$CartSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Cart cart});

  @override
  $CartCopyWith<$Res> get cart;
}

/// @nodoc
class __$$CartSuccessImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartSuccessImpl>
    implements _$$CartSuccessImplCopyWith<$Res> {
  __$$CartSuccessImplCopyWithImpl(
      _$CartSuccessImpl _value, $Res Function(_$CartSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cart = null,
  }) {
    return _then(_$CartSuccessImpl(
      cart: null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as Cart,
    ));
  }

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CartCopyWith<$Res> get cart {
    return $CartCopyWith<$Res>(_value.cart, (value) {
      return _then(_value.copyWith(cart: value));
    });
  }
}

/// @nodoc

class _$CartSuccessImpl extends CartSuccess {
  const _$CartSuccessImpl({required this.cart}) : super._();

  @override
  final Cart cart;

  @override
  String toString() {
    return 'CartState.success(cart: $cart)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartSuccessImpl &&
            (identical(other.cart, cart) || other.cart == cart));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cart);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartSuccessImplCopyWith<_$CartSuccessImpl> get copyWith =>
      __$$CartSuccessImplCopyWithImpl<_$CartSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Cart cart) idle,
    required TResult Function(Cart cart) success,
    required TResult Function(Cart cart) loading,
    required TResult Function(Object error, Cart? cart) error,
  }) {
    return success(cart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Cart cart)? idle,
    TResult? Function(Cart cart)? success,
    TResult? Function(Cart cart)? loading,
    TResult? Function(Object error, Cart? cart)? error,
  }) {
    return success?.call(cart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Cart cart)? idle,
    TResult Function(Cart cart)? success,
    TResult Function(Cart cart)? loading,
    TResult Function(Object error, Cart? cart)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(cart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartIdle value) idle,
    required TResult Function(CartSuccess value) success,
    required TResult Function(CartLoading value) loading,
    required TResult Function(CartError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartIdle value)? idle,
    TResult? Function(CartSuccess value)? success,
    TResult? Function(CartLoading value)? loading,
    TResult? Function(CartError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartIdle value)? idle,
    TResult Function(CartSuccess value)? success,
    TResult Function(CartLoading value)? loading,
    TResult Function(CartError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CartSuccess extends CartState {
  const factory CartSuccess({required final Cart cart}) = _$CartSuccessImpl;
  const CartSuccess._() : super._();

  @override
  Cart get cart;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartSuccessImplCopyWith<_$CartSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartLoadingImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$CartLoadingImplCopyWith(
          _$CartLoadingImpl value, $Res Function(_$CartLoadingImpl) then) =
      __$$CartLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Cart cart});

  @override
  $CartCopyWith<$Res> get cart;
}

/// @nodoc
class __$$CartLoadingImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartLoadingImpl>
    implements _$$CartLoadingImplCopyWith<$Res> {
  __$$CartLoadingImplCopyWithImpl(
      _$CartLoadingImpl _value, $Res Function(_$CartLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cart = null,
  }) {
    return _then(_$CartLoadingImpl(
      cart: null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as Cart,
    ));
  }

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CartCopyWith<$Res> get cart {
    return $CartCopyWith<$Res>(_value.cart, (value) {
      return _then(_value.copyWith(cart: value));
    });
  }
}

/// @nodoc

class _$CartLoadingImpl extends CartLoading {
  const _$CartLoadingImpl({required this.cart}) : super._();

  @override
  final Cart cart;

  @override
  String toString() {
    return 'CartState.loading(cart: $cart)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartLoadingImpl &&
            (identical(other.cart, cart) || other.cart == cart));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cart);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartLoadingImplCopyWith<_$CartLoadingImpl> get copyWith =>
      __$$CartLoadingImplCopyWithImpl<_$CartLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Cart cart) idle,
    required TResult Function(Cart cart) success,
    required TResult Function(Cart cart) loading,
    required TResult Function(Object error, Cart? cart) error,
  }) {
    return loading(cart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Cart cart)? idle,
    TResult? Function(Cart cart)? success,
    TResult? Function(Cart cart)? loading,
    TResult? Function(Object error, Cart? cart)? error,
  }) {
    return loading?.call(cart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Cart cart)? idle,
    TResult Function(Cart cart)? success,
    TResult Function(Cart cart)? loading,
    TResult Function(Object error, Cart? cart)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(cart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartIdle value) idle,
    required TResult Function(CartSuccess value) success,
    required TResult Function(CartLoading value) loading,
    required TResult Function(CartError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartIdle value)? idle,
    TResult? Function(CartSuccess value)? success,
    TResult? Function(CartLoading value)? loading,
    TResult? Function(CartError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartIdle value)? idle,
    TResult Function(CartSuccess value)? success,
    TResult Function(CartLoading value)? loading,
    TResult Function(CartError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CartLoading extends CartState {
  const factory CartLoading({required final Cart cart}) = _$CartLoadingImpl;
  const CartLoading._() : super._();

  @override
  Cart get cart;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartLoadingImplCopyWith<_$CartLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartErrorImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$CartErrorImplCopyWith(
          _$CartErrorImpl value, $Res Function(_$CartErrorImpl) then) =
      __$$CartErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object error, Cart? cart});

  @override
  $CartCopyWith<$Res>? get cart;
}

/// @nodoc
class __$$CartErrorImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartErrorImpl>
    implements _$$CartErrorImplCopyWith<$Res> {
  __$$CartErrorImplCopyWithImpl(
      _$CartErrorImpl _value, $Res Function(_$CartErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? cart = freezed,
  }) {
    return _then(_$CartErrorImpl(
      error: null == error ? _value.error : error,
      cart: freezed == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as Cart?,
    ));
  }
}

/// @nodoc

class _$CartErrorImpl extends CartError {
  const _$CartErrorImpl({required this.error, this.cart}) : super._();

  @override
  final Object error;
  @override
  final Cart? cart;

  @override
  String toString() {
    return 'CartState.error(error: $error, cart: $cart)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.cart, cart) || other.cart == cart));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), cart);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartErrorImplCopyWith<_$CartErrorImpl> get copyWith =>
      __$$CartErrorImplCopyWithImpl<_$CartErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Cart cart) idle,
    required TResult Function(Cart cart) success,
    required TResult Function(Cart cart) loading,
    required TResult Function(Object error, Cart? cart) error,
  }) {
    return error(this.error, cart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Cart cart)? idle,
    TResult? Function(Cart cart)? success,
    TResult? Function(Cart cart)? loading,
    TResult? Function(Object error, Cart? cart)? error,
  }) {
    return error?.call(this.error, cart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Cart cart)? idle,
    TResult Function(Cart cart)? success,
    TResult Function(Cart cart)? loading,
    TResult Function(Object error, Cart? cart)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, cart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartIdle value) idle,
    required TResult Function(CartSuccess value) success,
    required TResult Function(CartLoading value) loading,
    required TResult Function(CartError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartIdle value)? idle,
    TResult? Function(CartSuccess value)? success,
    TResult? Function(CartLoading value)? loading,
    TResult? Function(CartError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartIdle value)? idle,
    TResult Function(CartSuccess value)? success,
    TResult Function(CartLoading value)? loading,
    TResult Function(CartError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CartError extends CartState {
  const factory CartError({required final Object error, final Cart? cart}) =
      _$CartErrorImpl;
  const CartError._() : super._();

  Object get error;
  @override
  Cart? get cart;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartErrorImplCopyWith<_$CartErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
