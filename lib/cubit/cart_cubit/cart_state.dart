import 'package:flutter_online_shop/models/cart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_state.freezed.dart';

@freezed
sealed class CartState with _$CartState {
  const factory CartState.loading() = _Loading;
  const factory CartState.idle(Cart cart) = _Loaded;
  const factory CartState.error(String errorMessage) = _Error;
}
