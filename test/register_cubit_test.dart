import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_online_shop/cubit/register_cubit/register_cubit.dart';
import 'package:flutter_online_shop/cubit/register_cubit/register_state.dart';
import 'package:flutter_online_shop/models/address.dart';
import 'package:flutter_online_shop/models/name.dart';
import 'package:flutter_online_shop/models/user.dart';
import 'package:flutter_online_shop/service/api.dart';
import 'package:flutter_online_shop/service/user_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockUserRepository extends Mock implements IUserRepository {}

void main() {
  group('RegisterFormCubit', () {
    late RegisterFormCubit cubit;
    late MockUserRepository mockUserRepository;

    const name = Name(
      firstName: 'John',
      finalName: 'Doe',
    );

    const address = Address(
      city: 'City',
      street: 'Street',
      number: '123',
      zipcode: '12345',
    );

    const user = User(
      id: 1,
      email: 'test@example.com',
      userName: 'testuser',
      password: 'password',
      name: name,
      address: address,
    );

    setUp(() {
      mockUserRepository = MockUserRepository();
      cubit = RegisterFormCubit(mockUserRepository);
    });

    tearDown(() {
      cubit.close();
    });

    test('initial state is RegisterState.initial()', () {
      expect(
        cubit.state,
        equals(
          RegisterState.initial(),
        ),
      );
    });

    blocTest<RegisterFormCubit, RegisterState>(
      'emits [RegisterState.signingUp, RegisterState.success] when registration is successful',
      build: () {
        when(() => mockUserRepository.create(const CreateUserRequest(
              userName: 'ffff',
              email: 'ffff',
              password: 'ffff',
            ))).thenAnswer((_) async => user);
        return cubit;
      },
      seed: () => const RegisterState(
        userName: StringInput.pure(value: 'ffff'),
        email: StringInput.pure(value: 'ffff'),
        password: StringInput.pure(value: 'ffff'),
        status: RegisterStatus.idle,
      ),
      act: (cubit) => cubit.signUp(),
      expect: () => [
        const RegisterState(
          userName: StringInput.pure(value: 'ffff'),
          email: StringInput.pure(value: 'ffff'),
          password: StringInput.pure(value: 'ffff'),
          status: RegisterStatus.signingUp,
        ),
        const RegisterState(
          userName: StringInput.pure(value: 'ffff'),
          email: StringInput.pure(value: 'ffff'),
          password: StringInput.pure(value: 'ffff'),
          status: RegisterStatus.success,
        ),
        const RegisterState(
          userName: StringInput.pure(value: 'ffff'),
          email: StringInput.pure(value: 'ffff'),
          password: StringInput.pure(value: 'ffff'),
          status: RegisterStatus.idle,
        ),
      ],
    );

    final error = Exception();
    blocTest<RegisterFormCubit, RegisterState>(
      'emits [RegisterState.signingUp, RegisterState.error] when registration fails',
      build: () {
        when(() => mockUserRepository.create(
              const CreateUserRequest(
                userName: 'ffff',
                email: 'ffff',
                password: 'ffff',
              ),
            )).thenThrow(error);
        return cubit;
      },
      seed: () => const RegisterState(
        userName: StringInput.pure(value: 'ffff'),
        email: StringInput.pure(value: 'ffff'),
        password: StringInput.pure(value: 'ffff'),
        status: RegisterStatus.idle,
      ),
      act: (cubit) => cubit.signUp(),
      expect: () => [
        const RegisterState(
          userName: StringInput.pure(value: 'ffff'),
          email: StringInput.pure(value: 'ffff'),
          password: StringInput.pure(value: 'ffff'),
          status: RegisterStatus.signingUp,
        ),
        const RegisterState(
          userName: StringInput.pure(value: 'ffff'),
          email: StringInput.pure(value: 'ffff'),
          password: StringInput.pure(value: 'ffff'),
          status: RegisterStatus.error,
        ),
        const RegisterState(
          userName: StringInput.pure(value: 'ffff'),
          email: StringInput.pure(value: 'ffff'),
          password: StringInput.pure(value: 'ffff'),
          status: RegisterStatus.idle,
        ),
      ],
    );
  });
}
