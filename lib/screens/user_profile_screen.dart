import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_shop/cubit/user_cubit/user_cubit.dart';
import 'package:flutter_online_shop/cubit/user_cubit/user_state.dart';
import 'package:flutter_online_shop/cubit/user_profile_cubit/alert_dialog.dart';
import 'package:flutter_online_shop/cubit/user_profile_cubit/user_profile_cubit.dart';
import 'package:flutter_online_shop/cubit/user_profile_cubit/user_profile_state.dart';
import 'package:flutter_online_shop/service/user_repository.dart';
import 'package:flutter_online_shop/styles/decorations_styles.dart';
import 'package:flutter_online_shop/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter_online_shop/widgets/rounded_button.dart';
import 'package:go_router/go_router.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'User Profile',
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () => context.read<UserCubit>().logOut(),
              icon: const Icon(
                Icons.logout_outlined,
              ),
            ),
          ],
        ),
        bottomNavigationBar: const CustomBottomNavigationBar(),
        body: BlocBuilder<UserCubit, UserState>(
          builder: (_, state) => switch (state) {
            UserLoggedIn() => BlocProvider(
                create: (context) => UserProfileCubit(
                  context.read<IUserRepository>(),
                  user: state.user,
                ),
                child: Builder(
                  builder: (context) {
                    return BlocListener<UserProfileCubit, UserProfileState>(
                      listenWhen: (_, current) =>
                          current.status == UserProfileStatus.updated,
                      listener: (_, __) {
                        ScaffoldMessenger.of(context)
                          ..clearSnackBars()
                          ..showSnackBar(
                            const SnackBar(
                              backgroundColor: Colors.lightGreen,
                              content: Text(
                                'Updated successfully',
                              ),
                            ),
                          );
                      },
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24.0,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              const SizedBox(
                                height: 50.0,
                              ),
                              const Text(
                                'Name',
                              ),
                              const SizedBox(
                                height: 28.0,
                              ),
                              BlocBuilder<UserProfileCubit, UserProfileState>(
                                buildWhen: (previous, current) =>
                                    previous.firstName != current.firstName,
                                builder: (_, state) => TextFormField(
                                  initialValue: state.firstName.value,
                                  onChanged: context
                                      .read<UserProfileCubit>()
                                      .onFirstChanged,
                                  decoration:
                                      DecorationsStyles.textField.copyWith(
                                    labelText: 'First Name',
                                    errorText: state.firstName.isNotValid
                                        ? 'First Name is invalid'
                                        : null,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              BlocBuilder<UserProfileCubit, UserProfileState>(
                                builder: (_, state) => TextFormField(
                                  onChanged: context
                                      .read<UserProfileCubit>()
                                      .onFinalNameChanged,
                                  initialValue: state.finalName.value,
                                  decoration:
                                      DecorationsStyles.textField.copyWith(
                                    labelText: 'Last Name',
                                    errorText: state.finalName.isNotValid
                                        ? 'Last Name is invalid'
                                        : null,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              const Text(
                                'Address',
                              ),
                              const SizedBox(
                                height: 28.0,
                              ),
                              BlocBuilder<UserProfileCubit, UserProfileState>(
                                builder: (_, state) => TextFormField(
                                  onChanged: context
                                      .read<UserProfileCubit>()
                                      .onCityChanged,
                                  initialValue: state.city.value,
                                  decoration:
                                      DecorationsStyles.textField.copyWith(
                                    labelText: 'City',
                                    errorText: state.city.isNotValid
                                        ? 'City is invalid'
                                        : null,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              BlocBuilder<UserProfileCubit, UserProfileState>(
                                builder: (_, state) => TextFormField(
                                  onChanged: context
                                      .read<UserProfileCubit>()
                                      .onStreetChanged,
                                  initialValue: state.street.value,
                                  decoration:
                                      DecorationsStyles.textField.copyWith(
                                    labelText: 'Street',
                                    errorText: state.street.isNotValid
                                        ? 'Street is invalid'
                                        : null,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              BlocBuilder<UserProfileCubit, UserProfileState>(
                                builder: (_, state) => TextFormField(
                                  onChanged: context
                                      .read<UserProfileCubit>()
                                      .onNumberChanged,
                                  initialValue: state.number.value,
                                  decoration:
                                      DecorationsStyles.textField.copyWith(
                                    labelText: 'Number',
                                    errorText: state.number.isNotValid
                                        ? 'Number is invalid'
                                        : null,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              BlocBuilder<UserProfileCubit, UserProfileState>(
                                builder: (_, state) => TextFormField(
                                  onChanged: context
                                      .read<UserProfileCubit>()
                                      .onZipcodeChanged,
                                  keyboardType: TextInputType.number,
                                  initialValue: state.zipcode.value,
                                  decoration:
                                      DecorationsStyles.textField.copyWith(
                                    labelText: 'Zipcode',
                                    errorText: state.zipcode.isNotValid
                                        ? 'Zipcode is invalid'
                                        : null,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 45.0,
                              ),
                              BlocBuilder<UserProfileCubit, UserProfileState>(
                                builder: (context, state) => RoundedButton(
                                  onPressed: () {
                                    if (state.isNotValid) {
                                      ScaffoldMessenger.of(context)
                                        ..clearSnackBars()
                                        ..showSnackBar(
                                          const SnackBar(
                                            content: Text(
                                              'Please fill all the fields correctly.',
                                            ),
                                          ),
                                        );
                                      return;
                                    }

                                    context.read<UserProfileCubit>().onSave();
                                  },
                                  color:
                                      const Color.fromARGB(255, 214, 206, 206),
                                  text: 'Save',
                                  status: switch (state.status) {
                                    UserProfileStatus.idle ||
                                    UserProfileStatus.updated =>
                                      RoundedButtonStatus.enabled,
                                    _ => RoundedButtonStatus.busy,
                                  },
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              BlocBuilder<UserProfileCubit, UserProfileState>(
                                builder: (context, state) => RoundedButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (_) => DeleteAccountAlert(
                                        onConfirm: () {
                                          context
                                              .read<UserProfileCubit>()
                                              .deleteDetailInfo();
                                          context.go('/products');
                                        },
                                      ),
                                    );
                                    context.go('/products');
                                  },
                                  text: 'Delete Account',
                                  color: Colors.grey,
                                  status: switch (state.status) {
                                    UserProfileStatus.idle ||
                                    UserProfileStatus.deleted =>
                                      RoundedButtonStatus.enabled,
                                    _ => RoundedButtonStatus.busy,
                                  },
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            (_) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const Text(
                    'Need to be logged in to access this page',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 60.0,
                  ),
                  Center(
                    child: RoundedButton(
                      onPressed: () => context.go('/login'),
                      text: 'Login',
                      color: Colors.grey.shade400,
                    ),
                  ),
                ],
              ),
          },
        ),
      ),
    );
  }
}
