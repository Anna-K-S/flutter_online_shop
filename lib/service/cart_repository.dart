import 'package:flutter_online_shop/models/cart.dart';
import 'package:flutter_online_shop/models/cart_product.dart';
import 'package:flutter_online_shop/service/api.dart';

abstract interface class ICartRepository {
  Future<List<Cart>> getAll();
  Future<Cart> getById(int cartId);
  Future<List<Cart>> getWithLimit(int limit);
  Future<List<Cart>> getSorted(String sortBy);
  Future<List<Cart>> getInDateRange(DateTime startDate, DateTime endDate);
  Future<Cart?> getUser(int userId);
  Future<Cart> create({
    required int userId,
    required List<CartProduct> products,
  });
  Future<void> update(Cart cart);
  Future<void> delete(int cartId);
}

class CartRepository implements ICartRepository {
  final Api _api;

  CartRepository(this._api);

  @override
  Future<List<Cart>> getAll() async {
    return await _api.getAllCarts();
  }

  @override
  Future<Cart> getById(int cartId) async {
    return await _api.getCartById(cartId);
  }

  @override
  Future<List<Cart>> getWithLimit(int limit) async {
    return await _api.getCartsWithLimit(limit);
  }

  @override
  Future<List<Cart>> getSorted(String sortBy) async {
    return await _api.getSortedCarts(sortBy);
  }

  @override
  Future<List<Cart>> getInDateRange(
      DateTime startDate, DateTime endDate) async {
    return await _api.getCartsInDateRange(startDate, endDate);
  }

  @override
  Future<Cart?> getUser(int userId) => _api.getUserCart(userId);

  @override
  Future<Cart> create({
    required int userId,
    required List<CartProduct> products,
  }) {
    return _api.addCart(
      CreateCartRequest(
        userId: userId,
        date: DateTime.now(),
        products: products,
      ),
    );
  }

  @override
  Future<void> update(Cart cart) async {
    await _api.updateCart(cart.id, cart);
  }

  @override
  Future<void> delete(int cartId) async {
    await _api.deleteCart(cartId);
  }
}
