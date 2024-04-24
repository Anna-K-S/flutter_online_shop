import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_shop/cubit/user_cubit/user_cubit.dart';
import 'package:flutter_online_shop/cubit/user_cubit/user_state.dart';
import 'package:flutter_online_shop/service/user_repository.dart';
import 'package:flutter_online_shop/styles/decorations_styles.dart';
import 'package:flutter_online_shop/styles/text_styles.dart';
import 'package:flutter_online_shop/widgets/rounded_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

  void _visibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserCubit(context.read<IUserRepository>()),
      child: Builder(
        builder: (context) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Login Account',
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
                      height: 20.0,
                    ),
                    BlocBuilder<UserCubit, UserState>(
                      builder: (_, state) => TextFormField(
                        onChanged: context.read<UserCubit>().changeEmail,
                        initialValue: state.email,
                        decoration: DecorationsStyles.textField.copyWith(
                          labelText: 'Email Address',
                          labelStyle: TextStyles.text,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    BlocBuilder<UserCubit, UserState>(
                      builder: (_, state) => TextFormField(
                        onChanged: context.read<UserCubit>().changePassword,
                        initialValue: state.password,
                        obscureText: _obscureText,
                        autofillHints:
                            Theme.of(context).platform == TargetPlatform.iOS
                                ? const <String>[AutofillHints.oneTimeCode]
                                : null,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: DecorationsStyles.password(
                          obscureText: _obscureText,
                          visibility: _visibility,
                        ).copyWith(
                          labelText: 'Password',
                          labelStyle: TextStyles.text,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    BlocBuilder<UserCubit, UserState>(
                      builder: (context, state) => RoundedButton(
                        onPressed: () {
                          if (!state.isValid) {
                            ScaffoldMessenger.of(context)
                              ..clearSnackBars()
                              ..showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'Please fill in all fields',
                                  ),
                                ),
                              );
                            return;
                          }
                          context.read<UserCubit>().loginUp(
                                state.email,
                                state.password,
                              );
                              
                          if (state is UserError) {
                            ScaffoldMessenger.of(context)
                              ..clearSnackBars()
                              ..showSnackBar(
                                const SnackBar(
                                  content: Text(
                                      'Failed to log in. Please try again.'),
                                ),
                              );
                            return;
                          }
                        },
                        text: 'Login',
                        color: const Color.fromARGB(255, 214, 206, 206),
                        status: switch (state.runtimeType) {
                          UserIdle() ||
                              UserError() =>
                              RoundedButtonStatus.enabled,
                          UserLoginUp() => RoundedButtonStatus.busy,
                          UserSuccess() => RoundedButtonStatus.disabled,
                          _=> RoundedButtonStatus.enabled,
                        },
                       
                      ),
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
