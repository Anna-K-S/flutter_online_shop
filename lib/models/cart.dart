// import 'package:flutter_online_shop/models/cart_product.dart';

// class Cart {
//   final int id;
//   final int userId;
//   final DateTime date;
//   final List<CartProduct> products;

//   Cart({
//     required this.id,
//     required this.userId,
//     required this.date,
//     required this.products,
//   });

//   factory Cart.fromJson(Map<String, dynamic> json, List<CartProduct> cartProducts) {

//     final productsJson = json['products'] as List<dynamic>;
//     return Cart(
//       id: json['id'] as int,
//       userId: json['userId'] as int,
//       date: DateTime.parse(
//         json['date'] as String,
//       ),
//       products: productsJson
//           .map((json) => CartProduct.fromJson(json as Map<String, dynamic>))
//           .toList(),
//     );
//   }
// }

import 'package:flutter_online_shop/models/cart_product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

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
