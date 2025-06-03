import 'package:flutter/foundation.dart';
import 'package:flutter_online_shop/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_state.freezed.dart';

@freezed
sealed class UserState with _$UserState {
  const UserState._();

  bool get isSuccess => this is UserSuccess;

  bool get isLoginUp => this is UserLoginUp;

  bool get isError => this is UserError;

  bool get isIdle => this is UserIdle;

  bool get isLoggedIn => this is UserLoggedIn;

  bool get isValid => email.isNotEmpty && password.isNotEmpty;

  const factory UserState.idle({
    required String email,
    required String password,
  }) = UserIdle;

  const factory UserState.loginUp({
    required String email,
    required String password,
  }) = UserLoginUp;

  const factory UserState.success({
    required String email,
    required String password,
    required User user,
  }) = UserSuccess;

  const factory UserState.error({
    required String email,
    required String password,
    required Object error,
  }) = UserError;

  const factory UserState.loggedIn({
    required String email,
    required String password,
    required User user,
  }) = UserLoggedIn;
}
