import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:formz/formz.dart';

part 'register_state.freezed.dart';

@freezed
sealed class RegisterState with _$RegisterState, FormzMixin {
  const RegisterState._();

  const factory RegisterState({
    required StringInput userName,
    required StringInput email,
    required StringInput password,
    required RegisterStatus status,
    
  }) = _RegisterState;

  factory RegisterState.initial() => const RegisterState(
        userName: StringInput.pure(value: ''),
        email: StringInput.pure(value: ''),
        password: StringInput.pure(value: ''),
        status: RegisterStatus.idle,
      );

  @override
  List<FormzInput> get inputs => [
        userName,
        email,
        password,
      ];
}

enum RegisterStatus {
  idle,
  signingUp,
  success,
  error,
}

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
