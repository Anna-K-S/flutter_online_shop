import 'package:flutter_online_shop/models/cart.dart';

abstract interface class ICartRepository {
  Future<List<Cart>> getAll();
  Future<Cart> getCartById(int cartId);
  Future<List<Cart>> getCartsWithLimit(int limit);
  Future<List<Cart>> getSortedCarts(String sortBy);
  Future<List<Cart>> getCartsInDateRange(DateTime startDate, DateTime endDate);
  Future<Cart> getUserCart(int userId);
  Future<void> addNewCart(Cart cart);
  Future<void> update(int id, Cart cart);
  Future<void> deleteCart(int cartId);
}
 