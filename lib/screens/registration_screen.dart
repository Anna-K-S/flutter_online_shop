import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_shop/cubit/register_cubit/register_cubit.dart';
import 'package:flutter_online_shop/cubit/register_cubit/register_state.dart';
import 'package:flutter_online_shop/service/user_repository.dart';
import 'package:flutter_online_shop/styles/decorations_styles.dart';
import 'package:flutter_online_shop/styles/text_styles.dart';
import 'package:flutter_online_shop/widgets/rounded_button.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool _obscureText = true;

  void _visibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterFormCubit(context.read<IUserRepository>()),
      child: Builder(
        builder: (context) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const Text(
                    'Register Account',
                    style: TextStyles.title,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    'Fill Your Details',
                    style: TextStyles.subtitle,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const Text(
                    'Your Name',
                    style: TextStyles.text,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    onChanged: context.read<RegisterFormCubit>().changeName,
                    decoration: DecorationsStyles.textField,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    'Email Address',
                    style: TextStyles.text,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    onChanged: context.read<RegisterFormCubit>().changeEmail,
                    decoration: DecorationsStyles.textField,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    'Password',
                    style: TextStyles.text,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    obscureText: _obscureText,
                    onChanged: context.read<RegisterFormCubit>().changePassword,
                    decoration: DecorationsStyles.password(
                      obscureText: _obscureText,
                      visibility: _visibility,
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  BlocBuilder<RegisterFormCubit, RegisterState>(
                    builder: (context, state) => RoundedButton(
                      onPressed: () {
                        if (!state.isValid) {
                          ScaffoldMessenger.of(context)
                            ..clearSnackBars()
                            ..showSnackBar(
                              const SnackBar(
                                content: Text('Please fill all fields'),
                              ),
                            );
                          return;
                        }
                        context.read<RegisterFormCubit>().signUp();
                      },
                      text: 'Sing Up',
                      color: const Color.fromARGB(255, 214, 206, 206),
                      status: switch (state) {
                        RegisterIdle() ||
                        RegisterError() =>
                          RoundedButtonStatus.enabled,
                        RegisterSigningUp() => RoundedButtonStatus.busy,
                        RegisterSuccess() => RoundedButtonStatus.disabled,
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Already Have Account?',
                        style: TextStyles.text,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Log In',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
