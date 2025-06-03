import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_shop/cubit/cart_cubit/cart_cubit.dart';
import 'package:flutter_online_shop/cubit/products_cubit/products_cubit.dart';
import 'package:flutter_online_shop/models/cart_item.dart';
import 'package:flutter_online_shop/models/product.dart';
import 'package:flutter_online_shop/service/products_repository.dart';
import 'package:flutter_online_shop/styles/text_styles.dart';
import 'package:flutter_online_shop/widgets/cart_button.dart';
import 'package:flutter_online_shop/widgets/custom_bottom_navigation_bar.dart';

class ProductDetailScreen extends StatefulWidget {
  final Product product;
  const ProductDetailScreen({
    required this.product,
    super.key,
  });

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit(
        context.read<IProductsRepository>(),
      ),
      child: Builder(
        builder: (context) {
          final cartCubit = context.read<CartCubit>();
          final quantity = CartItem(product: widget.product, quantity: 0);

          return Scaffold(
            appBar: AppBar(
              title: const Text(
                'Product Detail',
              ),
              centerTitle: true,
            ),
            bottomNavigationBar: const CustomBottomNavigationBar(),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(
                  16.0,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      widget.product.title,
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      widget.product.category,
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      '\$${widget.product.price}',
                      style: TextStyles.detailScreenPrice,
                    ),
                    Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 300,
                          margin: const EdgeInsets.symmetric(
                            vertical: 8.0,
                          ),
                          padding: const EdgeInsets.all(
                            15.0,
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Image.network(
                            widget.product.image,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          widget.product.description,
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        SizedBox(
                          width: 200.0,
                          child: CartButton(
                            onPressed: () {
                              cartCubit.add(
                                widget.product,
                              );
                            },
                            child: const Text(
                              'Add to cart',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
