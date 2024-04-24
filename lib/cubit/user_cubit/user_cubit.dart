import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_shop/cubit/user_cubit/user_state.dart';
import 'package:flutter_online_shop/service/user_repository.dart';

class UserCubit extends Cubit<UserState> {
  final IUserRepository _userRepository;

  UserCubit(this._userRepository)
      : super(
          const UserState.idle(
            email: '',
            password: '',
          ),
        );

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
        UserState.success(
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
}
