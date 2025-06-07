import 'dart:async';
import 'dart:convert';
import 'package:flutter_online_shop/models/cart.dart';
import 'package:flutter_online_shop/service/api.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract interface class ICartRepository {
  Future<Cart?> get(int userId);
  Future<void> update(Cart cart);
  Future<void> delete({required int userId});
  Future<void> createEmptyCartForUser(String token);
}

class CartRepository implements ICartRepository {
  final Api _api;
  final SharedPreferences _prefs;
  Cart? _cart;
  static const String _cartKeyPrefix = 'cart_';

  CartRepository(this._api, this._prefs);

  static Future<CartRepository> create(Api api) async {
    final prefs = await SharedPreferences.getInstance();
    return CartRepository(api, prefs);
  }

  @override
  Future<Cart?> get(int userId) async {
    try {
      final json = _prefs.getString('cart_$userId');
      _cart = json != null ? Cart.fromJson(jsonDecode(json)) : null;
      return _cart;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> update(Cart cart) async {
    try {
      _cart = cart;
      await _prefs.setString('cart_${cart.userId}', jsonEncode(cart.toJson()));
      if (cart.userId != 0) {
        await _api.updateCart(cart.userId, cart);
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> delete({required int userId}) async {
    try {
      _cart = null;
      await _prefs.remove('cart_$userId');
      if (userId != 0) {}
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> createEmptyCartForUser(String token) async {
    final prefs = await SharedPreferences.getInstance();

    final cartKey = '$_cartKeyPrefix$token';

    final existingCart = prefs.getString(cartKey);
    if (existingCart != null) {
      return;
    }
    final emptyCartJson = jsonEncode([]);

    await prefs.setString(cartKey, emptyCartJson);
  }
}
