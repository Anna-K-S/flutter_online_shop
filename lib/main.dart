import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_shop/screens/registration_screen.dart';
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
      ],
      child: MaterialApp(
        home: RegistrationScreen(),
        // home: Scaffold(
        //   backgroundColor: Colors.white,
        //   appBar: AppBar(
        //     title: Text(
        //       'SHOP',
        //       style: TextStyle(
        //           color: Colors.orange.shade800, fontWeight: FontWeight.w600),
        //     ),
        //     backgroundColor: Colors.yellow.shade800,
        //   ),

        // ),
      ),
    );
  }
}
