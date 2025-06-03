import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_shop/cubit/cart_cubit/cart_cubit.dart';
import 'package:flutter_online_shop/cubit/cart_cubit/cart_state.dart';
import 'package:flutter_online_shop/cubit/user_cubit/user_cubit.dart';
import 'package:flutter_online_shop/cubit/user_cubit/user_state.dart';
import 'package:flutter_online_shop/models/cart.dart';
import 'package:flutter_online_shop/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter_online_shop/widgets/rounded_button.dart';
import 'package:go_router/go_router.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({
    super.key,
  });

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cart',
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: BlocBuilder<UserCubit, UserState>(
        builder: (_, userState) {
          switch (userState) {
            case UserLoggedIn():
              return BlocBuilder<CartCubit, CartState>(
                builder: (context, cartState) {
                  if (cartState.cartOrNull == null ||
                      cartState.cartOrNull!.items.isEmpty) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/shopping-cart.png',
                            height: 150,
                            color: Colors.black.withOpacity(0.4),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Text(
                            'Your cart is empty',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            height: 40.0,
                          ),
                          RoundedButton(
                            onPressed: () => context.go('/products'),
                            text: 'Go Shopping',
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    );
                  }
                  if (cartState.isSuccess) {
                    final cart = cartState.cart;

                    return Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            padding: const EdgeInsets.all(
                              20.0,
                            ),
                            itemCount: cart!.items.length,
                            itemBuilder: (context, index) {
                              final item = cart.items[index];
                              final product = item.product;

                              return Padding(
                                padding: const EdgeInsets.all(
                                  8.0,
                                ),
                                child: Material(
                                  elevation: 4,
                                  clipBehavior: Clip.hardEdge,
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                            20.0,
                                          ),
                                        ),
                                        padding: const EdgeInsets.all(
                                          10.0,
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 85,
                                              width: 85,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  20.0,
                                                ),
                                              ),
                                              child: Image.network(
                                                product.image,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10.0,
                                            ),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                    '\$${product.title}',
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: const TextStyle(
                                                      fontSize: 10.0,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10.0,
                                                  ),
                                                  Text(
                                                    '\$${product.category}',
                                                    maxLines: 2,
                                                    style: const TextStyle(
                                                      fontSize: 10.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black45,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 12.0,
                                                  ),
                                                  Text(
                                                    '\$${product.price}',
                                                    style: const TextStyle(
                                                      fontSize: 15.0,
                                                      color: Colors.blue,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        top: 17,
                                        right: 10,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                context
                                                    .read<CartCubit>()
                                                    .remove(product.id);
                                              },
                                              icon: const Icon(
                                                Icons.delete_outline,
                                                size: 25.0,
                                              ),
                                            ),
                                            Container(
                                              height: 35.0,
                                              decoration: BoxDecoration(
                                                color: Colors.white54,
                                                border: Border.all(
                                                  color: Colors.grey,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  20.0,
                                                ),
                                              ),
                                              child: Row(
                                                children: [
                                                  IconButton(
                                                    onPressed: () => context
                                                        .read<CartCubit>()
                                                        .updateQuantity(
                                                          product.id,
                                                          item.quantity - 1,
                                                        ),
                                                    icon: const Icon(
                                                      Icons.remove,
                                                      size: 18.0,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text(
                                                    '${item.quantity}',
                                                    style: const TextStyle(
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  IconButton(
                                                    onPressed: () => context
                                                        .read<CartCubit>()
                                                        .updateQuantity(
                                                          product.id,
                                                          item.quantity + 1,
                                                        ),
                                                    icon: const Icon(
                                                      Icons.add,
                                                      size: 18.0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        if (cart.items.isNotEmpty)
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 30.0),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Total:',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '\$${_totalPrice(cart)}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    );
                  }
                  context.read<CartCubit>().load(userState.user.id);
                  if (cartState.isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (cartState.isError) {
                    return const Text(
                      'Something went wrong',
                    );
                  }
                  return Container();
                },
              );
            case (_):
              return const Center(
                child: Text(
                  'Please log in to view your cart',
                ),
              );
          }
        },
      ),
    );
  }

  _totalPrice(Cart cart) {
    double total = 0.0;
    for (var item in cart.items) {
      total += item.quantity * item.product.price;
    }
    return total.toStringAsFixed(2);
  }
}
