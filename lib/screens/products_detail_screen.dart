import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_shop/cubit/cart_cubit/cart_cubit.dart';
import 'package:flutter_online_shop/cubit/product_details_cubit/product_details_cubit.dart';
import 'package:flutter_online_shop/cubit/product_details_cubit/product_details_state.dart';
import 'package:flutter_online_shop/service/products_repository.dart';
import 'package:flutter_online_shop/styles/text_styles.dart';
import 'package:flutter_online_shop/widgets/cart_button.dart';
import 'package:flutter_online_shop/widgets/custom_bottom_navigation_bar.dart';

class ProductDetailScreen extends StatelessWidget {
  final int productId;

  const ProductDetailScreen({
    required this.productId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductDetailsCubit(
        context.read<IProductsRepository>(),
      )..load(productId),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Product Detail'),
          centerTitle: true,
        ),
        bottomNavigationBar: const CustomBottomNavigationBar(),
        body: BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              success: (product) => SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        product.title,
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        product.category,
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        '\$${product.price}',
                        style: TextStyles.detailScreenPrice,
                      ),
                      Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 300,
                            margin: const EdgeInsets.symmetric(vertical: 8.0),
                            padding: const EdgeInsets.all(15.0),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Image.network(
                              product.image,
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            product.description,
                            style: TextStyles.productDescription,
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          SizedBox(
                            width: 200.0,
                            child: CartButton(
                              onPressed: () {
                                context.read<CartCubit>().add(
                                      product,
                                    );
                              },
                              child: const Text('Add to cart'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              error: (error) => Center(child: Text('Error: $error')),
              orElse: () => const Center(child: Text('No data')),
            );
          },
        ),
      ),
    );
  }
}
