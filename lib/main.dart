import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_shop/cubit/user_cubit/user_cubit.dart';
import 'package:flutter_online_shop/models/user.dart';
import 'package:flutter_online_shop/screens/login_screen.dart';
import 'package:flutter_online_shop/screens/registration_screen.dart';
import 'package:flutter_online_shop/screens/user_profile_screen.dart';
import 'package:flutter_online_shop/service/api.dart';
import 'package:flutter_online_shop/service/my_bloc_observer.dart';
import 'package:flutter_online_shop/service/user_repository.dart';
import 'package:logger/web.dart';

void main() {
  Bloc.observer = MyBlocObserver(Logger());
  runApp(const OnlineShop());
}

class OnlineShop extends StatelessWidget {
  const OnlineShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (_) => Api(Dio()),
        ),
        RepositoryProvider<IUserRepository>(
          create: (context) => UserRepository(
            context.read<Api>(),
          ),
        ),

        BlocProvider(create: (context) => UserCubit(context.read<IUserRepository>()))
      ],
      child: const MaterialApp(
        home: LoginScreen(),
      ),
    );
  }
}
