import 'package:flutter_online_shop/models/cart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_state.freezed.dart';

@freezed
sealed class CartState with _$CartState {
  const CartState._();

  bool get isSuccess => this is CartSuccess;
  bool get isLoading => this is CartLoading;
  bool get isError => this is CartError;
  bool get isIdle => this is CartIdle;

  const factory CartState.idle({
    required Cart cart,
  }) = CartIdle;

  const factory CartState.success({
    required Cart cart,
  }) = CartSuccess;

  const factory CartState.loading({
    required Cart cart,
  }) = CartLoading;

  const factory CartState.error({
    required Object error,
    Cart? cart,
  }) = CartError;

  Cart? get cartOrNull => map(
        idle: (state) => state.cart,
        success: (state) => state.cart,
        loading: (state) => state.cart,
        error: (state) => state.cart,
      );
}
