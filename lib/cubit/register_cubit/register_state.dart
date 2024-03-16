import 'package:flutter_online_shop/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
sealed class RegisterState with _$RegisterState {
  const RegisterState._();

  bool get isSuccess => this is RegisterSuccess;

  bool get isSigningUp => this is RegisterSigningUp;

  bool get isError => this is RegisterError;

  bool get isIdle => this is RegisterIdle;

  bool get isValid =>
      userName.isNotEmpty && email.isNotEmpty && password.isNotEmpty;

  const factory RegisterState.idle({
    required String userName,
    required String email,
    required String password,
  }) = RegisterIdle;

  const factory RegisterState.signingUp({
    required String userName,
    required String email,
    required String password,
  }) = RegisterSigningUp;

  const factory RegisterState.success({
    required String userName,
    required String email,
    required String password,
    required User user,
  }) = RegisterSuccess;

  const factory RegisterState.error({
    required String userName,
    required String email,
    required String password,
    required Object error,
  }) = RegisterError;
}
