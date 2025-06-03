import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_shop/cubit/cart_cubit/cart_cubit.dart';
import 'package:flutter_online_shop/cubit/products_cubit/products_cubit.dart';
import 'package:flutter_online_shop/cubit/products_cubit/products_state.dart';
import 'package:flutter_online_shop/screens/products_detail_screen.dart';
import 'package:flutter_online_shop/service/products_repository.dart';
import 'package:flutter_online_shop/styles/text_styles.dart';
import 'package:flutter_online_shop/themes/app_themes.dart';
import 'package:flutter_online_shop/widgets/cart_button.dart';
import 'package:flutter_online_shop/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter_online_shop/widgets/custom_search_bar.dart';
import 'package:provider/provider.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});
  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  //контроллеры для управления поиском
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    //добавляем слушатели к контроллерам для реагирования на изменения
    searchController.addListener(queryListener);
  }

  void queryListener() {
    context.read<ProductsCubit>().searchProducts(searchController.text);
  }

  @override
  void dispose() {
    searchController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit(
        context.read<IProductsRepository>(),
      ),
      child: Builder(builder: (context) {
        return Consumer<AppThemes>(builder: (context, themeData, child) {
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                'Products',
              ),
              centerTitle: true,
              actions: [
                IconButton(
                  onPressed: () => themeData.toggleTheme(),
                  icon: Icon(
                    themeData.themeData == AppThemes.light
                        ? Icons.nightlight_round
                        : Icons.wb_sunny,
                  ),
                )
              ],
            ),
            bottomNavigationBar: const CustomBottomNavigationBar(),
            body: Padding(
              padding: const EdgeInsets.all(
                16.0,
              ),
              child: RefreshIndicator(
                onRefresh: () => context.read<ProductsCubit>().reload(),
                color: Colors.blue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Discover Everything You Need Online!',
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    CustomSearchBar(
                      searchController: searchController,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    BlocBuilder<ProductsCubit, ProductsState>(
                      builder: (_, state) {
                        if (state.isSuccess) {
                          final products = state.products;
                          return Expanded(
                            child: GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 4,
                                mainAxisSpacing: 10,
                              ),
                              itemCount: products!.length,
                              itemBuilder: (context, index) {
                                final product = products[index];

                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ProductDetailScreen(
                                          product: product,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                      vertical: 8,
                                    ),
                                    padding: const EdgeInsets.all(
                                      15,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                        18,
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                          clipBehavior: Clip.hardEdge,
                                          child: Image.network(
                                            product.image,
                                            width: 80,
                                            height: 100,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        Flexible(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                product.title,
                                                maxLines: 3,
                                                style: TextStyles
                                                    .productsScreenTitle,
                                              ),
                                              const SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                '\$${product.price}',
                                                textAlign: TextAlign.center,
                                                style: TextStyles
                                                    .productsScreenPrice,
                                              ),
                                              const SizedBox(
                                                height: 8.0,
                                              ),
                                              CartButton(
                                                onPressed: () {
                                                  context
                                                      .read<CartCubit>()
                                                      .add(product);
                                                },
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
                          );
                        }
                        context.read<ProductsCubit>().load();
                        if (state.isLoading) {
                          return const Center(
                            child: CircularProgressIndicator(
                              color: Colors.white54,
                            ),
                          );
                        }
                        if (state.isError) {
                          return const Center(
                            child: Text(
                              'Failed to load products',
                            ),
                          );
                        }
                        return const SizedBox();
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        });
      }),
    );
  }
}
