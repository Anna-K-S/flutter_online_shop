import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_shop/cubit/cart_cubit/cart_state.dart';
import 'package:flutter_online_shop/models/cart.dart';
import 'package:flutter_online_shop/models/cart_item.dart';
import 'package:flutter_online_shop/models/product.dart';
import 'package:flutter_online_shop/service/cart_repository.dart';

class CartCubit extends Cubit<CartState> {
  final ICartRepository _cartRepository;

  CartCubit(
    this._cartRepository,
  ) : super(
          CartIdle(
            cart: Cart(
              userId: 0,
              date: DateTime.now(),
              items: [],
            ),
          ),
        );

  Future<void> load(int userId) async {
    if (state.isLoading) return;

    final currentCart = state.cartOrNull;
    if (currentCart != null) {
      emit(CartLoading(cart: currentCart.copyWith(userId: userId)));
    }

    try {
      final cart = (await _cartRepository.get(userId));

      if (cart == null) return;

      return emit(state.cartOrNull == null
          ? CartIdle(cart: cart)
          : CartSuccess(cart: cart));
    } catch (e) {
      emit(
        CartError(
          error: "Failed to load cart: $e",
          cart: state.cartOrNull,
        ),
      );
    }
  }

  Future<void> add(Product product) async {
    final cart = state.cartOrNull;

    if (cart == null) return;

    emit(CartLoading(cart: cart));
    try {
      final isAlreadyInCart = cart.items.any((p) => p.product.id == product.id);

      final newItems = isAlreadyInCart
          ? cart.items
              .map(
                (e) => e.product.id == product.id
                    ? e.copyWith(quantity: e.quantity + 1)
                    : e,
              )
              .toList()
          : [...cart.items, CartItem(product: product, quantity: 1)];
      final newCart = cart.copyWith(items: newItems);
      await _cartRepository.update(newCart);
      emit(
        CartSuccess(cart: newCart),
      );
    } catch (e) {
      emit(
        CartError(
          error: "Failed to add to cart: $e",
          cart: state.cart,
        ),
      );
    }
  }

  Future<void> remove(int id) async {
    final cart = state.cartOrNull;

    if (cart == null) return;

    final exists = cart.items.any((i) => i.product.id == id);

    if (!exists) return;

    emit(CartLoading(cart: cart));
    try {
      final newItems = cart.items.where((i) => i.product.id != id).toList();

      final newCart = cart.copyWith(items: newItems);
      await _cartRepository.update(newCart);
      emit(CartIdle(cart: newCart));
    } catch (e) {
      emit(
        CartError(
          error: "Failed to remove from cart: $e",
          cart: state.cart,
        ),
      );
    }
  }

  Future<void> updateQuantity(int productId, int newQuantity) async {
    final cart = state.cartOrNull;

    if (cart == null) return;

    if (newQuantity < 1) {
      await remove(productId);
      return;
    }

    emit(CartLoading(cart: cart));
    try {
      final updatedProducts = cart.items
          .map(
            (item) => item.product.id == productId
                ? item.copyWith(quantity: newQuantity)
                : item,
          )
          .toList();

      final newCart = cart.copyWith(items: updatedProducts);

      await _cartRepository.update(newCart);

      emit(CartSuccess(cart: newCart));
    } catch (e) {
      emit(
        CartError(
          error: "Failed to update product quantity: $e",
          cart: state.cart,
        ),
      );
    }
  }
}
