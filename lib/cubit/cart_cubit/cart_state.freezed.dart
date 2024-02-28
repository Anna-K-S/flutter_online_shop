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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Cart cart) loading,
    required TResult Function(Cart cart) idle,
    required TResult Function(String? errorMessage, Cart? cart) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Cart cart)? loading,
    TResult? Function(Cart cart)? idle,
    TResult? Function(String? errorMessage, Cart? cart)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Cart cart)? loading,
    TResult Function(Cart cart)? idle,
    TResult Function(String? errorMessage, Cart? cart)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartInitial value) initial,
    required TResult Function(CartLoading value) loading,
    required TResult Function(CartLoaded value) idle,
    required TResult Function(CartError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartInitial value)? initial,
    TResult? Function(CartLoading value)? loading,
    TResult? Function(CartLoaded value)? idle,
    TResult? Function(CartError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartInitial value)? initial,
    TResult Function(CartLoading value)? loading,
    TResult Function(CartLoaded value)? idle,
    TResult Function(CartError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CartInitialImplCopyWith<$Res> {
  factory _$$CartInitialImplCopyWith(
          _$CartInitialImpl value, $Res Function(_$CartInitialImpl) then) =
      __$$CartInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartInitialImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartInitialImpl>
    implements _$$CartInitialImplCopyWith<$Res> {
  __$$CartInitialImplCopyWithImpl(
      _$CartInitialImpl _value, $Res Function(_$CartInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CartInitialImpl extends CartInitial {
  const _$CartInitialImpl() : super._();

  @override
  String toString() {
    return 'CartState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Cart cart) loading,
    required TResult Function(Cart cart) idle,
    required TResult Function(String? errorMessage, Cart? cart) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Cart cart)? loading,
    TResult? Function(Cart cart)? idle,
    TResult? Function(String? errorMessage, Cart? cart)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Cart cart)? loading,
    TResult Function(Cart cart)? idle,
    TResult Function(String? errorMessage, Cart? cart)? error,
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
    required TResult Function(CartInitial value) initial,
    required TResult Function(CartLoading value) loading,
    required TResult Function(CartLoaded value) idle,
    required TResult Function(CartError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartInitial value)? initial,
    TResult? Function(CartLoading value)? loading,
    TResult? Function(CartLoaded value)? idle,
    TResult? Function(CartError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartInitial value)? initial,
    TResult Function(CartLoading value)? loading,
    TResult Function(CartLoaded value)? idle,
    TResult Function(CartError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CartInitial extends CartState {
  const factory CartInitial() = _$CartInitialImpl;
  const CartInitial._() : super._();
}

/// @nodoc
abstract class _$$CartLoadingImplCopyWith<$Res> {
  factory _$$CartLoadingImplCopyWith(
          _$CartLoadingImpl value, $Res Function(_$CartLoadingImpl) then) =
      __$$CartLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Cart cart});

  $CartCopyWith<$Res> get cart;
}

/// @nodoc
class __$$CartLoadingImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartLoadingImpl>
    implements _$$CartLoadingImplCopyWith<$Res> {
  __$$CartLoadingImplCopyWithImpl(
      _$CartLoadingImpl _value, $Res Function(_$CartLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cart = null,
  }) {
    return _then(_$CartLoadingImpl(
      null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as Cart,
    ));
  }

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
  const _$CartLoadingImpl(this.cart) : super._();

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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartLoadingImplCopyWith<_$CartLoadingImpl> get copyWith =>
      __$$CartLoadingImplCopyWithImpl<_$CartLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Cart cart) loading,
    required TResult Function(Cart cart) idle,
    required TResult Function(String? errorMessage, Cart? cart) error,
  }) {
    return loading(cart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Cart cart)? loading,
    TResult? Function(Cart cart)? idle,
    TResult? Function(String? errorMessage, Cart? cart)? error,
  }) {
    return loading?.call(cart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Cart cart)? loading,
    TResult Function(Cart cart)? idle,
    TResult Function(String? errorMessage, Cart? cart)? error,
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
    required TResult Function(CartInitial value) initial,
    required TResult Function(CartLoading value) loading,
    required TResult Function(CartLoaded value) idle,
    required TResult Function(CartError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartInitial value)? initial,
    TResult? Function(CartLoading value)? loading,
    TResult? Function(CartLoaded value)? idle,
    TResult? Function(CartError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartInitial value)? initial,
    TResult Function(CartLoading value)? loading,
    TResult Function(CartLoaded value)? idle,
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
  const factory CartLoading(final Cart cart) = _$CartLoadingImpl;
  const CartLoading._() : super._();

  Cart get cart;
  @JsonKey(ignore: true)
  _$$CartLoadingImplCopyWith<_$CartLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartLoadedImplCopyWith<$Res> {
  factory _$$CartLoadedImplCopyWith(
          _$CartLoadedImpl value, $Res Function(_$CartLoadedImpl) then) =
      __$$CartLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Cart cart});

  $CartCopyWith<$Res> get cart;
}

/// @nodoc
class __$$CartLoadedImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartLoadedImpl>
    implements _$$CartLoadedImplCopyWith<$Res> {
  __$$CartLoadedImplCopyWithImpl(
      _$CartLoadedImpl _value, $Res Function(_$CartLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cart = null,
  }) {
    return _then(_$CartLoadedImpl(
      null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as Cart,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CartCopyWith<$Res> get cart {
    return $CartCopyWith<$Res>(_value.cart, (value) {
      return _then(_value.copyWith(cart: value));
    });
  }
}

/// @nodoc

class _$CartLoadedImpl extends CartLoaded {
  const _$CartLoadedImpl(this.cart) : super._();

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
            other is _$CartLoadedImpl &&
            (identical(other.cart, cart) || other.cart == cart));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cart);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartLoadedImplCopyWith<_$CartLoadedImpl> get copyWith =>
      __$$CartLoadedImplCopyWithImpl<_$CartLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Cart cart) loading,
    required TResult Function(Cart cart) idle,
    required TResult Function(String? errorMessage, Cart? cart) error,
  }) {
    return idle(cart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Cart cart)? loading,
    TResult? Function(Cart cart)? idle,
    TResult? Function(String? errorMessage, Cart? cart)? error,
  }) {
    return idle?.call(cart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Cart cart)? loading,
    TResult Function(Cart cart)? idle,
    TResult Function(String? errorMessage, Cart? cart)? error,
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
    required TResult Function(CartInitial value) initial,
    required TResult Function(CartLoading value) loading,
    required TResult Function(CartLoaded value) idle,
    required TResult Function(CartError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartInitial value)? initial,
    TResult? Function(CartLoading value)? loading,
    TResult? Function(CartLoaded value)? idle,
    TResult? Function(CartError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartInitial value)? initial,
    TResult Function(CartLoading value)? loading,
    TResult Function(CartLoaded value)? idle,
    TResult Function(CartError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class CartLoaded extends CartState {
  const factory CartLoaded(final Cart cart) = _$CartLoadedImpl;
  const CartLoaded._() : super._();

  Cart get cart;
  @JsonKey(ignore: true)
  _$$CartLoadedImplCopyWith<_$CartLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartErrorImplCopyWith<$Res> {
  factory _$$CartErrorImplCopyWith(
          _$CartErrorImpl value, $Res Function(_$CartErrorImpl) then) =
      __$$CartErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorMessage, Cart? cart});

  $CartCopyWith<$Res>? get cart;
}

/// @nodoc
class __$$CartErrorImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartErrorImpl>
    implements _$$CartErrorImplCopyWith<$Res> {
  __$$CartErrorImplCopyWithImpl(
      _$CartErrorImpl _value, $Res Function(_$CartErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? cart = freezed,
  }) {
    return _then(_$CartErrorImpl(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      cart: freezed == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as Cart?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CartCopyWith<$Res>? get cart {
    if (_value.cart == null) {
      return null;
    }

    return $CartCopyWith<$Res>(_value.cart!, (value) {
      return _then(_value.copyWith(cart: value));
    });
  }
}

/// @nodoc

class _$CartErrorImpl extends CartError {
  const _$CartErrorImpl({this.errorMessage, this.cart}) : super._();

  @override
  final String? errorMessage;
  @override
  final Cart? cart;

  @override
  String toString() {
    return 'CartState.error(errorMessage: $errorMessage, cart: $cart)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.cart, cart) || other.cart == cart));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage, cart);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartErrorImplCopyWith<_$CartErrorImpl> get copyWith =>
      __$$CartErrorImplCopyWithImpl<_$CartErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Cart cart) loading,
    required TResult Function(Cart cart) idle,
    required TResult Function(String? errorMessage, Cart? cart) error,
  }) {
    return error(errorMessage, cart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Cart cart)? loading,
    TResult? Function(Cart cart)? idle,
    TResult? Function(String? errorMessage, Cart? cart)? error,
  }) {
    return error?.call(errorMessage, cart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Cart cart)? loading,
    TResult Function(Cart cart)? idle,
    TResult Function(String? errorMessage, Cart? cart)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage, cart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartInitial value) initial,
    required TResult Function(CartLoading value) loading,
    required TResult Function(CartLoaded value) idle,
    required TResult Function(CartError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartInitial value)? initial,
    TResult? Function(CartLoading value)? loading,
    TResult? Function(CartLoaded value)? idle,
    TResult? Function(CartError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartInitial value)? initial,
    TResult Function(CartLoading value)? loading,
    TResult Function(CartLoaded value)? idle,
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
  const factory CartError({final String? errorMessage, final Cart? cart}) =
      _$CartErrorImpl;
  const CartError._() : super._();

  String? get errorMessage;
  Cart? get cart;
  @JsonKey(ignore: true)
  _$$CartErrorImplCopyWith<_$CartErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
