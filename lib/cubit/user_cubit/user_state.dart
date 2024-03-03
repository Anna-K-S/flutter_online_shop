import 'package:flutter_online_shop/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_state.freezed.dart';

@freezed
sealed class UserState with _$UserState {
  const UserState._();

  User? get userOrNull => switch (this) {
        UserInitial() => null,
        UserLoading(:final user) => user,
        UserLoaded(:final user) => user,
        UserError(:final user) => user,
      };

  const factory UserState.initial() = UserInitial;
  const factory UserState.loading(User user) = UserLoading;
  const factory UserState.idle(User user) = UserLoaded;
  const factory UserState.error({
    Object? error,
    User? user,
  }) = UserError;
}
