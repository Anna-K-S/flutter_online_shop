import 'package:flutter_online_shop/models/cart_product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart.freezed.dart';
part 'cart.g.dart';

@freezed
class Cart with _$Cart {
  const factory Cart({
    required int id,
    required int userId,
    required DateTime date,
    required List<CartProduct> products,
  }) = _Cart;

  factory Cart.fromJson(Map<String, dynamic> json, List<CartProduct> cartProducts) => _$CartFromJson(json);
}
