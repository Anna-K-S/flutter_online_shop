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
    late RegisterCubit cubit;
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
      cubit = RegisterCubit(mockUserRepository);
    });

    tearDown(() {
      cubit.close();
    });

    test('initial state is RegisterState.initial()', () {
      expect(
        cubit.state,
        equals(
          const RegisterState.initial(),
        ),
      );
    });

    blocTest<RegisterCubit, RegisterState>(
      'emits [RegisterState.loading(), RegisterState.idle()] when registration is successful',
      seed: () => const RegisterState.loading(user),
      build: () {
        when(() => mockUserRepository.create(user))
            .thenAnswer((_) async => user);
        return cubit;
      },
      act: (cubit) => cubit.register(user),
      expect: () => [
        const RegisterState.initial(),
        const RegisterState.idle(user),
      ],
    );

    blocTest<RegisterCubit, RegisterState>(
      'emits [RegisterState.loading(), RegisterState.error()] when registration fails',
      seed: () => const RegisterLoaded(user),
      build: () {
        when(() => mockUserRepository.create(user)).thenThrow(1);
        return cubit;
      },
      act: (cubit) => cubit.register(user),
      expect: () => [
        const RegisterState.initial(),
        const RegisterState.error(error: 1),
      ],
    );
  });
}
