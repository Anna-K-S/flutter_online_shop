import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_shop/cubit/cart_cubit/cart_cubit.dart';
import 'package:flutter_online_shop/cubit/user_cubit/user_cubit.dart';
import 'package:flutter_online_shop/cubit/user_cubit/user_state.dart';
import 'package:flutter_online_shop/models/product.dart';
import 'package:flutter_online_shop/screens/cart_screen.dart';
import 'package:flutter_online_shop/screens/login_screen.dart';
import 'package:flutter_online_shop/screens/products_detail_screen.dart';
import 'package:flutter_online_shop/screens/products_screen.dart';
import 'package:flutter_online_shop/screens/registration_screen.dart';
import 'package:flutter_online_shop/screens/user_profile_screen.dart';
import 'package:flutter_online_shop/service/api.dart';
import 'package:flutter_online_shop/service/auth_repository.dart';
import 'package:flutter_online_shop/service/cart_repository.dart';
import 'package:flutter_online_shop/service/my_bloc_observer.dart';
import 'package:flutter_online_shop/service/products_repository.dart';
import 'package:flutter_online_shop/service/user_repository.dart';
import 'package:flutter_online_shop/themes/app_themes.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/web.dart';
import 'package:provider/provider.dart';

void main() {
  Bloc.observer = MyBlocObserver(Logger());
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppThemes(),
      child: OnlineShop(),
    ),
  );
}

class OnlineShop extends StatelessWidget {
  OnlineShop({super.key});

  final GoRouter _router = GoRouter(
    initialLocation: '/products',
    routes: [
      GoRoute(
        path: '/products',
        builder: (context, state) => const ProductsScreen(),
      ),
      GoRoute(
        path: '/cart',
        builder: (context, state) => const CartScreen(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegistrationScreen(),
      ),
      GoRoute(
        path: '/profile',
        builder: (context, state) => const UserProfileScreen(),
      ),
      GoRoute(
        path: '/product_detail',
        builder: (context, state) {
          final product = state.extra as Product;
          return ProductDetailScreen(productId: product.id);
        },
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    final api = Api(Dio());

    return FutureBuilder<ICartRepository>(
      future: CartRepository.create(api),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const MaterialApp(
            home: Scaffold(
              body: Center(child: CircularProgressIndicator()),
            ),
          );
        }

        if (snapshot.hasError) {
          return MaterialApp(
            home: Scaffold(
              body: Center(child: Text('Error: ${snapshot.error}')),
            ),
          );
        }

        final cartRepository = snapshot.data!;

        return MultiRepositoryProvider(
          providers: [
            RepositoryProvider<IAuthRepository>(
              create: (_) => AuthRepository(
                const FlutterSecureStorage(),
              ),
            ),
            RepositoryProvider.value(value: api),
            RepositoryProvider<IUserRepository>(
              create: (context) => UserRepository(
                context.read<Api>(),
                context.read<IAuthRepository>(),
              ),
            ),
            RepositoryProvider<ICartRepository>.value(
              value: cartRepository,
            ),
            BlocProvider(
              create: (context) => UserCubit(
                context.read<IUserRepository>(),
                context.read<IAuthRepository>(),
              ),
            ),
            RepositoryProvider<IProductsRepository>(
              create: (context) => ProductsRepository(
                context.read<Api>(),
              ),
            ),
            BlocProvider(
              create: (context) => CartCubit(
                context.read<ICartRepository>(),
              ),
            ),
          ],
          child: Consumer<AppThemes>(
            builder: (context, themeData, child) {
              return BlocListener<UserCubit, UserState>(
                listenWhen: (previous, current) =>
                    previous.isLoggedIn != current.isLoggedIn,
                listener: (context, state) {
                  switch (state) {
                    case UserSuccess(:final user):
                    case UserLoggedIn(:final user):
                      context.read<CartCubit>().load(user.id);

                    case UserIdle():
                    case UserLoginUp():
                    case UserError():
                  }
                },
                child: MaterialApp.router(
                  routerConfig: _router,
                  title: 'Flutter Online Shop',
                  theme: themeData.themeData,
                ),
              );
            },
          ),
        );
      },
    );
  }
}
