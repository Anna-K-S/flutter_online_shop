import 'package:flutter_online_shop/models/cart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_state.freezed.dart';

@freezed
sealed class CartState with _$CartState {
  const CartState._();

  Cart? get cartOrNull => switch (this) {
        CartInitial() => null,
        CartLoading(:final cart) => cart,
        CartLoaded(:final cart) => cart,
        CartError(:final cart) => cart,
      };

  const factory CartState.initial() = CartInitial;
  const factory CartState.loading(Cart cart) = CartLoading;
  const factory CartState.idle(Cart cart) = CartLoaded;
  const factory CartState.error({
    String? errorMessage,
    Cart? cart,
  }) = CartError;
}
