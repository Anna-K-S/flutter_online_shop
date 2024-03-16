import 'package:flutter_online_shop/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
sealed class RegisterState with _$RegisterState {
  const RegisterState._();

   User? get userOrNull => switch (this) {
       RegisterInitial() => null,
        RegisterLoading(:final user) => user,
        RegisterLoaded(:final user) => user,
        RegisterError(:final user) => user,
      };

  const factory RegisterState.initial() = RegisterInitial;
  const factory RegisterState.loading(User user) = RegisterLoading;
  const factory RegisterState.idle(User user) = RegisterLoaded;
  const factory RegisterState.error({
    Object? error,
    User? user,
  }) = RegisterError;
}
