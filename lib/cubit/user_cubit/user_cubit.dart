import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_shop/cubit/user_cubit/user_state.dart';
import 'package:flutter_online_shop/models/user.dart';
import 'package:flutter_online_shop/service/user_repository.dart';

class UserCubit extends Cubit<UserState> {
  final IUserRepository _userRepository;
  late final StreamSubscription<User>? _userSubscription;

  UserCubit(this._userRepository)
      : super(
          const UserState.idle(
            email: '',
            password: '',
          ),
        ) {
    _init();
  }

  void changeEmail(String email) {
    emit(state.copyWith(email: email));
  }

  void changePassword(String password) =>
      emit(state.copyWith(password: password));

  Future<void> loginUp(String email, String password) async {
    if (state.isLoginUp) return;

    emit(
      UserState.loginUp(
        email: email,
        password: password,
      ),
    );
    try {
      final user = await _userRepository.login(
        email,
        password,
      );

      if (user == null) {
        return emit(
          UserState.idle(
            email: email,
            password: password,
          ),
        );
      }

      emit(
        UserState.loggedIn(
          user: user,
          email: email,
          password: password,
        ),
      );
    } catch (e) {
      emit(UserState.error(
        error: e,
        email: email,
        password: password,
      ));
    }
  }

  Future<void> logOut() async {
    await _userRepository.deleteToken();
    emit(const UserState.idle(email: '', password: ''));
  }

  Future<void> checkAuthentication() async {
    final token = await _userRepository.getToken();
    if (token != null) {
      final user = await _userRepository.getUserFromToken(token);
      if (user != null) {
        emit(
          UserState.loggedIn(
            user: user,
            email: user.email,
            password: user.password,
          ),
        );
        return;
      }
    }
    emit(
      const UserState.idle(
        email: '',
        password: '',
      ),
    );
  }

  Future<void> _init() async {
    _userSubscription = _userRepository.userUpdated.listen((user) {
      if (!state.isLoggedIn) return;

      emit(
        UserState.loggedIn(
          user: user,
          email: user.email,
          password: user.password,
        ),
      );
    });

    final token = await _userRepository.getToken();

    if (token == null) return;

    final user = await _userRepository.getUserFromToken(token);

    if (user == null) return;

    emit(
      UserState.loggedIn(
        user: user,
        email: user.email,
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
