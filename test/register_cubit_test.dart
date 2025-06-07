import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_online_shop/cubit/register_cubit/register_cubit.dart';
import 'package:flutter_online_shop/cubit/register_cubit/register_state.dart';
import 'package:flutter_online_shop/models/address.dart';
import 'package:flutter_online_shop/models/name.dart';
import 'package:flutter_online_shop/models/user.dart';
import 'package:flutter_online_shop/service/api.dart';
import 'package:flutter_online_shop/service/auth_repository.dart';
import 'package:flutter_online_shop/service/cart_repository.dart';
import 'package:flutter_online_shop/service/user_repository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockUserRepository extends Mock implements IUserRepository {}

class MockSecureStorage extends Mock implements FlutterSecureStorage {}

class MockAuthRepository extends Mock implements IAuthRepository {}

class MockCartRepository extends Mock implements ICartRepository {}

void main() {
  group('RegisterFormCubit', () {
    late RegisterFormCubit cubit;
    late MockUserRepository mockUserRepository;
    late MockSecureStorage mockSecureStorage;
    late MockAuthRepository mockAuthRepository;
    late MockCartRepository mockCartRepository;

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
        email: 'ffff',
        userName: 'ffff',
        password: 'ffff',
        name: name,
        address: address,
        token: ' ffff');
    setUpAll(() {
      mockUserRepository = MockUserRepository();
      mockSecureStorage = MockSecureStorage();
      mockAuthRepository = MockAuthRepository();
      mockCartRepository = MockCartRepository();

      cubit = RegisterFormCubit(
          mockUserRepository, mockAuthRepository, mockCartRepository);

      when(() => mockSecureStorage.write(
          key: any(named: 'key'),
          value: any(named: 'value'))).thenAnswer((_) async {});
      when(() => mockUserRepository.create(const CreateUserRequest(
          userName: 'ffff',
          email: 'ffff',
          password: 'ffff',
          token: 'ffff'))).thenAnswer((_) async => user);
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
        when(() => mockUserRepository.create(
              const CreateUserRequest(
                userName: 'ffff',
                email: 'ffff',
                password: 'ffff',
                token: 'ffff',
              ),
            )).thenAnswer((_) async => user);
        return cubit;
      },
      seed: () => const RegisterState(
        userName: StringInput.pure(value: 'ffff'),
        email: StringInput.pure(value: 'ffff'),
        password: StringInput.pure(value: 'ffff'),
        status: RegisterStatus.signingUp,
      ),
      act: (cubit) => cubit.signUp(),
      expect: () => [
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

    blocTest<RegisterFormCubit, RegisterState>(
      'emits [RegisterState.signingUp, RegisterState.error, RegisterState.idle] when registration fails',
      build: () {
        when(
          () => mockUserRepository.create(
            const CreateUserRequest(
                userName: 'ffff',
                email: 'ffff',
                password: 'ffff',
                token: 'ffff'),
          ),
        ).thenThrow(Exception('Registration failed'));
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
