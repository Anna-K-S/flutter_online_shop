import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_shop/cubit/user_profile_cubit/user_profile_state.dart';
import 'package:flutter_online_shop/models/address.dart';
import 'package:flutter_online_shop/models/name.dart';
import 'package:flutter_online_shop/models/user.dart';
import 'package:flutter_online_shop/service/user_repository.dart';

class UserProfileCubit extends Cubit<UserProfileState> {
  final IUserRepository _userRepository;
  final User _user;

  UserProfileCubit(this._userRepository, {required User user})
      : _user = user,
        super(
          UserProfileState(
            finalName: StringInput.pure(
              value: user.name.finalName,
            ),
            firstName: StringInput.pure(
              value: user.name.firstName,
            ),
            city: StringInput.pure(
              value: user.address.city,
            ),
            street: StringInput.pure(
              value: user.address.street,
            ),
            number: StringInput.pure(
              value: user.address.number,
            ),
            zipcode: StringInput.pure(
              value: user.address.zipcode,
            ),
            status: UserProfileStatus.idle,
          ),
        );

  void onFirstChanged(String value) {
    emit(state.copyWith(firstName: StringInput.dirty(value: value)));
  }

  void onFinalNameChanged(String value) {
    emit(state.copyWith(finalName: StringInput.dirty(value: value)));
  }

  void onCityChanged(String value) {
    emit(state.copyWith(city: StringInput.dirty(value: value)));
  }

  void onStreetChanged(String value) {
    emit(state.copyWith(street: StringInput.dirty(value: value)));
  }

  void onNumberChanged(String value) {
    emit(state.copyWith(number: StringInput.dirty(value: value)));
  }

  void onZipcodeChanged(String value) {
    emit(state.copyWith(zipcode: StringInput.dirty(value: value)));
  }

  Future<void> onSave() async {
    if (state.isNotValid) return;

    if (state.status == UserProfileStatus.updating) return;

    final newUser = _user.copyWith(
      name: Name(
        firstName: state.firstName.value,
        finalName: state.finalName.value,
      ),
      address: Address(
        city: state.city.value,
        street: state.street.value,
        number: state.number.value,
        zipcode: state.zipcode.value,
      ),
    );

    if (newUser == _user) return;

    emit(state.copyWith(status: UserProfileStatus.updating));

    try {
      await _userRepository.update(newUser);
      emit(state.copyWith(status: UserProfileStatus.updated));
    } catch (e) {
      emit(state.copyWith(status: UserProfileStatus.error));
    } finally {
      emit(state.copyWith(status: UserProfileStatus.idle));
    }
  }

  Future<void> delete() async {
    emit(state.copyWith(status: UserProfileStatus.deleting));
    try {
      await _userRepository.delete(_user);
      emit(state.copyWith(status: UserProfileStatus.deleted));
    } catch (e) {
      emit(state.copyWith(status: UserProfileStatus.error));
    } finally {
      emit(state.copyWith(status: UserProfileStatus.idle));
    }
  }
}
