import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_shop/cubit/cart_cubit/cart_state.dart';
import 'package:flutter_online_shop/models/cart_product.dart';
import 'package:flutter_online_shop/service/cart_repository.dart';

class CartCubit extends Cubit<CartState> {
  final ICartRepository _cartRepository;

  CartCubit(this._cartRepository) : super(const CartState.initial());

  Future<void> load(int userId) async {
    emit(const CartState.initial());
    try {
      final cart = await _cartRepository.getUser(userId) ??
          await _cartRepository.create(
            userId: userId,
            products: [],
          );

      emit(CartState.idle(cart));
    } catch (e) {
      emit(
        CartState.error(
          errorMessage: "Failed to load cart: $e",
          cart: state.cartOrNull,
        ),
      );
    }
  }

  Future<void> add(int userId, CartProduct product) async {
    final cart = state.cartOrNull;

    if (cart == null) return;

    emit(CartState.loading(cart));
    try {
      final newCart = cart.copyWith(
        products: cart.products.toList()..add(product),
      );
      await _cartRepository.update(newCart);
      emit(CartState.idle(newCart));
    } catch (e) {
      emit(
        CartState.error(errorMessage: "Failed to add to cart: $e", cart: cart),
      );
    }
  }

  Future<void> remove(int userId, CartProduct product) async {
    final cart = state.cartOrNull;

    if (cart == null) return;

    emit(CartState.loading(cart));
    try {
      final newProducts = cart.products.toList()..remove(product);
      final newCart = cart.copyWith(products: newProducts);
      await _cartRepository.update(newCart);
      emit(CartState.idle(newCart));
    } catch (e) {
      emit(
        CartState.error(
          errorMessage: "Failed to remove from cart: $e",
          cart: cart,
        ),
      );
    }
  }
}
