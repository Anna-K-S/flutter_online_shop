import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_online_shop/cubit/register_cubit/register_cubit.dart';
import 'package:flutter_online_shop/cubit/register_cubit/register_state.dart';
import 'package:flutter_online_shop/models/address.dart';
import 'package:flutter_online_shop/models/name.dart';
import 'package:flutter_online_shop/models/user.dart';
import 'package:flutter_online_shop/service/user_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockUserRepository extends Mock implements IUserRepository {}

void main() {
  group('RegisterCubit', () {
    late RegisterFormCubit cubit;
    late MockUserRepository mockUserRepository;

    const name = Name(
      firstName: 'John',
      finalName: 'Doe',
    );

    const address = Address(
      city: 'City',
      street: 'Street',
      number: 123,
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

    test('initial state is RegisterState.idle()', () {
      expect(
        cubit.state,
        equals(
          const RegisterState.idle(
            userName: '',
            email: '',
            password: '',
          ),
        ),
      );
    });

    blocTest<RegisterFormCubit, RegisterState>(
      'emits [RegisterState.signingUp, RegisterState.success] when registration is successful',
      build: () {
        when(() => mockUserRepository.create(any(), any(), any()))
            .thenAnswer((_) async => user);
        return cubit;
      },
      act: (cubit) => cubit.signUp(),
      expect: () => [
        const RegisterState.signingUp(
          userName: '',
          email: '',
          password: '',
        ),
        const RegisterState.success(
          userName: '',
          email: '',
          password: '',
          user: user,
        ),
      ],
    );
    final error = Exception();
    blocTest<RegisterFormCubit, RegisterState>(
      'emits [RegisterState.signingUp, RegisterState.error] when registration fails',
      seed: () => const RegisterState.idle(
        userName: '',
        email: '',
        password: '',
      ),
      build: () {
        when(() => mockUserRepository.create(any(), any(), any()))
            .thenThrow(error);
        return cubit;
      },
      act: (cubit) => cubit.signUp(),
      expect: () => [
        const RegisterState.signingUp(
          userName: '',
          email: '',
          password: '',
        ),
        RegisterState.error(
          userName: '',
          email: '',
          password: '',
          error: error,
        ),
      ],
    );
  });
}
