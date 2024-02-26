import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_shop/cubit/cart_cubit/cart_state.dart';
import 'package:flutter_online_shop/models/cart_product.dart';
import 'package:flutter_online_shop/service/cart_repository.dart';

class CartCubit extends Cubit<CartState> {
  final ICartRepository _cartRepository;

  CartCubit(this._cartRepository) : super(const CartState.loading());

  Future<void> load(int userId) async {
    emit(const CartState.loading());
    try {
      final cart = await _cartRepository.getUser(userId);
      emit(
        CartState.idle(cart),
      );
    } catch (e) {
      emit(CartState.error("Failed to load cart: $e"));
    }
  }

  Future<void> add(int userId, CartProduct product) async {
    emit(const CartState.loading());
    try {
      final cart = await _cartRepository.getUser(userId);
      cart.products.add(product);
      await _cartRepository.update(cart.id, cart);
      emit(
        CartState.idle(cart),
      );
    } catch (e) {
      emit(CartState.error("Failed to add to cart: $e"));
    }
  }

  Future<void> remove(int userId, CartProduct product) async {
    emit(const CartState.loading());
    try {
      final cart = await _cartRepository.getUser(userId);
      cart.products.remove(product);
      await _cartRepository.update(cart.id, cart);
      emit(
        CartState.idle(cart),
      );
    } catch (e) {
      emit(CartState.error("Failed to remove from cart: $e"));
    }
  }
}
