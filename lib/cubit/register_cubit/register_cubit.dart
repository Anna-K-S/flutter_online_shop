import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_shop/cubit/register_cubit/register_state.dart';
import 'package:flutter_online_shop/service/api.dart';
import 'package:flutter_online_shop/service/auth_repository.dart';
import 'package:flutter_online_shop/service/cart_repository.dart';
import 'package:flutter_online_shop/service/user_repository.dart';

class RegisterFormCubit extends Cubit<RegisterState> {
  final IUserRepository _userRepository;
  final ICartRepository _cartRepository;
  final IAuthRepository _authRepository;

  RegisterFormCubit(
    this._userRepository,
    this._authRepository,
    this._cartRepository,
  ) : super(
          const RegisterState(
            userName: StringInput.pure(value: ''),
            email: StringInput.pure(value: ''),
            password: StringInput.pure(value: ''),
            status: RegisterStatus.idle,
          ),
        );

  void changeName(String userName) {
    emit(
      state.copyWith(
        userName: StringInput.dirty(value: userName),
      ),
    );
  }

  void changeEmail(String email) {
    emit(
      state.copyWith(
        email: StringInput.dirty(value: email),
      ),
    );
  }

  void changePassword(String password) {
    emit(
      state.copyWith(
        password: StringInput.dirty(value: password),
      ),
    );
  }

  Future<void> signUp() async {
    if (state.isNotValid) return;

    final userName = state.userName.value;
    final email = state.email.value;
    final password = state.password.value;

    emit(
      state.copyWith(
        status: RegisterStatus.signingUp,
      ),
    );

    try {
      final user = await _userRepository.create(
        CreateUserRequest(
          userName: userName,
          email: email,
          password: password,
          token: '',
        ),
      );
      await _authRepository.saveToken(user.token);
      await _cartRepository.createEmptyCartForUser(user.token);

      if (!isClosed) {
        emit(state.copyWith(
          status: RegisterStatus.success,
        ));
      }
    } catch (e) {
      emit(state.copyWith(
        status: RegisterStatus.error,
      ));
    } finally {
      emit(
        state.copyWith(status: RegisterStatus.idle),
      );
    }
  }
}
