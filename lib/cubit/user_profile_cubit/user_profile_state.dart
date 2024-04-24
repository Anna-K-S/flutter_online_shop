import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_state.freezed.dart';


@freezed
class UserProfileState with _$UserProfileState, FormzMixin {
  const UserProfileState._();

  const factory UserProfileState({
    required StringInput firstName,
    required StringInput finalName,
    required StringInput city,
    required StringInput street,
    required StringInput number,
    required StringInput zipcode,
    required UserProfileStatus status,
  }) = _UserProfileState;

  factory UserProfileState.initial() => const UserProfileState(
        firstName: StringInput.pure(value: ''),
        finalName: StringInput.pure(value: ''),
        city: StringInput.pure(value: ''),
        street: StringInput.pure(value: ''),
        number: StringInput.pure(value: ''),
        zipcode: StringInput.pure(value: ''),
        status: UserProfileStatus.idle,
      );

  @override
  List<FormzInput> get inputs => [
        firstName,
        finalName,
        city,
        street,
        number,
        zipcode,
      ];
}

enum UserProfileStatus { idle, updating, error, updated, deleting, deleted }

enum FormInputError {
  empty,
  invalid,
}

class StringInput extends FormzInput<String, FormInputError> {
  const StringInput.pure({required String value}) : super.pure(value);

  const StringInput.dirty({required String value}) : super.dirty(value);

  @override
  FormInputError? validator(String value) {
    return value.isEmpty ? FormInputError.empty : null;
  }
}
