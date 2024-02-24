import 'package:flutter_online_shop/models/cart.dart';
import 'package:flutter_online_shop/service/api.dart';

abstract interface class ICartRepository {
  Future<List<Cart>> getAll();
  Future<Cart> getById(int cartId);
  Future<List<Cart>> getWithLimit(int limit);
  Future<List<Cart>> getSorted(String sortBy);
  Future<List<Cart>> getInDateRange(DateTime startDate, DateTime endDate);
  Future<Cart> getUser(int userId);
  Future<void> addNew(Cart cart);
  Future<void> update(int id, Cart cart);
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
  Future<List<Cart>> getInDateRange(DateTime startDate, DateTime endDate) async {
    return await _api.getCartsInDateRange(startDate, endDate);
  }

  @override
  Future<Cart> getUser(int userId) async {
    return await _api.getUserCart(userId);
  }

  @override
  Future<void> addNew(Cart cart) async {
    await _api.addCart(cart);
  }

  @override
  Future<void> update(int id, Cart cart) async {
    await _api.updateCart(id, cart);
  }

  @override
  Future<void> delete(int cartId) async {
    await _api.deleteCart(cartId);
  }
}