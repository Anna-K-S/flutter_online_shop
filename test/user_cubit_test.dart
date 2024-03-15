import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_online_shop/cubit/user_cubit/user_cubit.dart';
import 'package:flutter_online_shop/cubit/user_cubit/user_state.dart';
import 'package:flutter_online_shop/models/address.dart';
import 'package:flutter_online_shop/models/name.dart';
import 'package:flutter_online_shop/models/user.dart';
import 'package:flutter_online_shop/service/user_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockUserRepository extends Mock implements IUserRepository {}

void main() {
  group('UserCubit', () {
    late UserCubit cubit;
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
        address: address);

    setUp(() {
      mockUserRepository = MockUserRepository();
      cubit = UserCubit(mockUserRepository);
      when(() => mockUserRepository.create(
            user,
          )).thenAnswer((_) async => user);
    });

    tearDown(() {
      cubit.close();
    });

    test('initial state is UserState.initial()', () {
      expect(
        cubit.state,
        equals(
          const UserState.initial(),
        ),
      );
    });

    blocTest<UserCubit, UserState>(
      'setUser emits UserState.idle(user)',
      build: () => cubit,
      act: (cubit) => cubit.set(user),
      expect: () => [
        const UserState.idle(user),
      ],
    );

    blocTest<UserCubit, UserState>(
      'loginUser emits [UserState.loading(), UserState.idle(user)] when login is successful',
      seed: () => const UserLoading(user),
      build: () {
        when(() => mockUserRepository.login(user.email, user.password))
            .thenAnswer((_) async => user);
        return cubit;
      },
      act: (cubit) => cubit.set(user),
      expect: () => [
        const UserState.idle(user),
      ],
    );

    blocTest<UserCubit, UserState>(
      'loginUser emits [UserState.loading(), UserState.error] when login fails',
      seed: () => const UserLoaded(user),
      build: () {
        when(() => mockUserRepository.login(
              user.email,
              user.password,
            )).thenThrow(1);
        return cubit;
      },
      act: (cubit) => cubit.login(
        user.email,
        user.password,
      ),
      expect: () => [
        const UserState.initial(),
        const UserState.error(
          error: 1,
        ),
      ],
    );
  });
}
