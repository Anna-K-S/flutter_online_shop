import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_shop/cubit/user_cubit/user_cubit.dart';
import 'package:flutter_online_shop/cubit/user_cubit/user_state.dart';
import 'package:flutter_online_shop/cubit/user_profile_cubit/alert_dialog.dart';
import 'package:flutter_online_shop/cubit/user_profile_cubit/user_profile_cubit.dart';
import 'package:flutter_online_shop/cubit/user_profile_cubit/user_profile_state.dart';
import 'package:flutter_online_shop/service/user_repository.dart';
import 'package:flutter_online_shop/styles/decorations_styles.dart';
import 'package:flutter_online_shop/styles/text_styles.dart';
import 'package:flutter_online_shop/widgets/rounded_button.dart';

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
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'User Profile',
            style: TextStyles.title,
          ),
          centerTitle: true,
        ),
        body: BlocBuilder<UserCubit, UserState>(
          builder: (_, state) => switch (state) {
            UserSuccess() => BlocProvider(
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
                                style: TextStyles.subtitle,
                              ),
                              const SizedBox(
                                height: 8.0,
                              ),
                              const SizedBox(
                                height: 20.0,
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
                                    labelStyle: TextStyles.text,
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
                                    labelStyle: TextStyles.text,
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
                                style: TextStyles.subtitle,
                              ),
                              const SizedBox(
                                height: 8.0,
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
                                    labelStyle: TextStyles.text,
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
                                    labelStyle: TextStyles.text,
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
                                    labelStyle: TextStyles.text,
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
                                  decoration:
                                      DecorationsStyles.textField.copyWith(
                                    labelText: 'Zipcode',
                                    labelStyle: TextStyles.text,
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
                                        onConfirm: context
                                            .read<UserProfileCubit>()
                                            .delete,
                                      ),
                                    );
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
            _ => const Center(
                child: Text(
                  'Need to be logged in',
                ),
              )
          },
        ),
      ),
    );
  }
}
