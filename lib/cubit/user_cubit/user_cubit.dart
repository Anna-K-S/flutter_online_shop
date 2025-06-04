import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_shop/cubit/user_cubit/user_state.dart';
import 'package:flutter_online_shop/models/user.dart';
import 'package:flutter_online_shop/service/auth_repository.dart';
import 'package:flutter_online_shop/service/user_repository.dart';

class UserCubit extends Cubit<UserState> {
  final IUserRepository _userRepository;
  late final StreamSubscription<User>? _userSubscription;
  final IAuthRepository _authRepository;

  UserCubit(this._userRepository, this._authRepository)
      : super(
          const UserState.idle(
            username: '',
            password: '',
          ),
        ) {
    _init();
  }

  void changeEmail(String username) {
    emit(state.copyWith(username: username));
  }

  void changePassword(String password) =>
      emit(state.copyWith(password: password));

  Future<void> loginUp(String username, String password) async {
    if (state.isLoginUp) return;

    emit(
      UserState.loginUp(
        username: username,
        password: password,
      ),
    );
    try {
      final user = await _userRepository.login(
        username,
        password,
      );

      if (user == null) {
        throw Exception('Invalid credentials');
      }

      emit(
        UserState.loggedIn(
          user: user,
          username: username,
          password: password,
        ),
      );
    } catch (e) {
      emit(UserState.error(
        error: e.toString(),
        username: username,
        password: password,
      ));
    }
  }

  Future<void> logOut() async {
    await _authRepository.deleteToken();
    emit(const UserState.idle(username: '', password: ''));
  }

  Future<void> _init() async {
    _userSubscription = _userRepository.userUpdated.listen((user) {
      if (!state.isLoggedIn) return;

      emit(
        UserState.loggedIn(
          user: user,
          username: user.userName,
          password: user.password,
        ),
      );
    });

    final token = await _authRepository.getToken();

    if (token == null) return;

    final user = await _userRepository.getUserFromToken(token);

    if (user == null) return;

    emit(
      UserState.loggedIn(
        user: user,
        username: user.userName,
        password: user.password,
      ),
    );
  }

  @override
  Future<void> close() {
    _userSubscription!.cancel();
    return super.close();
  }
}
