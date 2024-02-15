// class CartProduct {
//   final int productId;
//   final int quantity;

//   CartProduct({
//     required this.productId,
//     required this.quantity,
//   });

//   factory CartProduct.fromJson(Map<String, dynamic> json) {
//     return CartProduct(
//       productId: json['productId'] as int,
//       quantity: json['quantity'] as int,
//     );
//   }
// }

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_product.freezed.dart';
part 'cart_product.g.dart';

@freezed
class CartProduct with _$CartProduct {
  const factory CartProduct({
    required int productId,
    required int quantity,
  }) = _CartProduct;

  factory CartProduct.fromJson(Map<String, dynamic> json) =>
      _$CartProductFromJson(json);
}
