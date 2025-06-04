import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_shop/cubit/register_cubit/register_cubit.dart';
import 'package:flutter_online_shop/cubit/register_cubit/register_state.dart';
import 'package:flutter_online_shop/service/auth_repository.dart';
import 'package:flutter_online_shop/service/cart_repository.dart';
import 'package:flutter_online_shop/service/user_repository.dart';
import 'package:flutter_online_shop/styles/decorations_styles.dart';
import 'package:flutter_online_shop/styles/text_styles.dart';
import 'package:flutter_online_shop/widgets/rounded_button.dart';
import 'package:go_router/go_router.dart';

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
      create: (context) => RegisterFormCubit(
        context.read<IUserRepository>(),
        context.read<IAuthRepository>(),
        context.read<ICartRepository>(),
      ),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    const Text(
                      'Register Account',
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      'Fill Your Details',
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    BlocBuilder<RegisterFormCubit, RegisterState>(
                      builder: (_, state) => TextFormField(
                        keyboardType: TextInputType.text,
                        onChanged: context.read<RegisterFormCubit>().changeName,
                        initialValue: state.userName.value,
                        decoration: DecorationsStyles.textField.copyWith(
                          labelText: 'Your Name',
                          errorText: state.userName.isPure
                              ? null
                              : state.userName.error == FormInputError.empty
                                  ? 'Invalid Name'
                                  : null,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    BlocBuilder<RegisterFormCubit, RegisterState>(
                      builder: (_, state) => TextFormField(
                        onChanged:
                            context.read<RegisterFormCubit>().changeEmail,
                        initialValue: state.email.value,
                        keyboardType: TextInputType.emailAddress,
                        decoration: DecorationsStyles.textField.copyWith(
                          label: const Text(
                            'Email Address',
                          ),
                          errorText: state.email.isPure
                              ? null
                              : state.email.error == FormInputError.empty
                                  ? 'Invalid Email'
                                  : null,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    BlocBuilder<RegisterFormCubit, RegisterState>(
                      builder: (_, state) => TextFormField(
                        onChanged:
                            context.read<RegisterFormCubit>().changePassword,
                        initialValue: state.password.value,
                        autofillHints:
                            Theme.of(context).platform == TargetPlatform.iOS
                                ? const <String>[AutofillHints.oneTimeCode]
                                : null,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: _obscureText,
                        decoration: DecorationsStyles.password(
                          obscureText: _obscureText,
                          visibility: _visibility,
                        ).copyWith(
                          label: const Text(
                            'Password',
                          ),
                          errorText: state.isPure
                              ? null
                              : state.password.isNotValid ==
                                      FormInputError.empty
                                  ? 'Invalid Password'
                                  : null,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    BlocBuilder<RegisterFormCubit, RegisterState>(
                      builder: (context, state) => RoundedButton(
                        onPressed: () {
                          if (state.isNotValid) {
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

                          context.go('/profile');
                        },
                        text: 'Sing Up',
                        color: const Color.fromARGB(255, 214, 206, 206),
                        status: switch (state.status) {
                          RegisterStatus.idle ||
                          RegisterStatus.success =>
                            RoundedButtonStatus.enabled,
                          _ => RoundedButtonStatus.busy,
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
                          onPressed: () => context.go('/login'),
                          child: const Text(
                            'Log In',
                            style: TextStyle(fontWeight: FontWeight.bold),
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
