
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_shop/cubit/register_cubit/register_state.dart';
import 'package:flutter_online_shop/models/user.dart';
import 'package:flutter_online_shop/service/user_repository.dart';

class RegisterCubit extends Cubit<RegisterState>{
  final IUserRepository _userRepository;

  RegisterCubit(this._userRepository) : super(const RegisterState.initial());

  Future<void> register(User user) async {
    emit(
      const RegisterState.initial(),
    );
    try {
      final newUser = await _userRepository.create(
       user,
      );
      emit(RegisterState.idle(newUser));
    } catch (e) {
      emit(RegisterState.error(
        error: e,
        user: state.userOrNull,
      ));
    }
  }

}