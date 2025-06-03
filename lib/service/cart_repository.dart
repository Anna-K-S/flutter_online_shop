import 'dart:async';
import 'dart:convert';

import 'package:flutter_online_shop/models/cart.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract interface class ICartRepository {
  Future<Cart?> get(int userId);
  Future<void> update(Cart cart);
  Future<void> delete({required int userId});
}

class CartRepository implements ICartRepository {
  CartRepository();

  Cart? _cart;

  @override
  Future<Cart?> get(int userId) async {
    final cart = _cart ??
        await SharedPreferences.getInstance().then((value) {
          final json = value.getString('cart_$userId');
          if (json != null) {
            return Cart.fromJson(jsonDecode(json));
          }

          return null;
        });
    return cart;
  }

  @override
  Future<void> update(Cart cart) async {
    _cart = cart;

    await SharedPreferences.getInstance().then((value) {
      value.setString(
        'cart_${cart.userId}',
        jsonEncode(
          cart.toJson(),
        ),
      );
    });
  }

  @override
  Future<void> delete({required int userId}) async {
    _cart = null;

    await SharedPreferences.getInstance().then((value) {
      value.remove('cart_$userId');
    });
  }
}
