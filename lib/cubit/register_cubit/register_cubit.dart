import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_shop/cubit/register_cubit/register_state.dart';
import 'package:flutter_online_shop/service/user_repository.dart';

class RegisterFormCubit extends Cubit<RegisterState> {
  final IUserRepository _userRepository;

  RegisterFormCubit(this._userRepository)
      : super(
          const RegisterState.idle(
            userName: '',
            email: '',
            password: '',
          ),
        );

  void changeName(String userName) => emit(
        state.copyWith(
          userName: userName,
        ),
      );

  void changeEmail(String email) => emit(state.copyWith(email: email));

  void changePassword(String password) =>
      emit(state.copyWith(password: password));

  Future<void> signUp() async {
    if (state.isSigningUp) return;

    emit(
      RegisterState.signingUp(
        userName: state.userName,
        email: state.email,
        password: state.password,
      ),
    );
    try {
      final newUser = await _userRepository.create(
        state.userName,
        state.email,
        state.password,
      );
      emit(
        RegisterState.success(
          userName: state.userName,
          email: state.email,
          password: state.password,
          user: newUser,
        ),
      );
    } catch (e) {
      emit(
        RegisterState.error(
          error: e,
          userName: state.userName,
          email: state.email,
          password: state.password,
        ),
      );
    }
  }
}
