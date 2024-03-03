import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_shop/cubit/user_cubit/user_state.dart';
import 'package:flutter_online_shop/models/user.dart';
import 'package:flutter_online_shop/service/user_repository.dart';

class UserCubit extends Cubit<UserState> {
  final IUserRepository _userRepository;

  UserCubit(this._userRepository) : super(const UserState.initial());

  
  Future<void> login(String email, String password) async {
    emit(const UserState.initial());
    try {
      final user = await _userRepository.login(email, password);
      if (user != null) {
        emit(UserState.loading(user));
      } else {
        emit( UserState.idle(user!)
        );
      }
    } catch (e) {
      emit(UserState.error(
        error: e,
        user: state.userOrNull,
      ));
    }
  }

  Future<void> update(User user) async {
    try {
      await _userRepository.update(user);
      emit(UserState.idle(user));
    } catch (e) {
      emit(UserState.error(error: e, user: user));
    }
  }

  void set(User user) {
    emit(UserState.idle(user));
  }
}
