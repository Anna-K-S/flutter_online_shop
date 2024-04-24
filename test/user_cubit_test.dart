import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_online_shop/cubit/user_cubit/user_cubit.dart';
import 'package:flutter_online_shop/cubit/user_cubit/user_state.dart';
import 'package:flutter_online_shop/models/address.dart';
import 'package:flutter_online_shop/models/name.dart';
import 'package:flutter_online_shop/models/user.dart';
import 'package:flutter_online_shop/service/api.dart';
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
      number: '123',
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
            const CreateUserRequest(
              userName: '',
              email: '',
              password: '',
            ),
          )).thenAnswer((_) async => user);
    });

    tearDown(() {
      cubit.close();
    });

    test('initial state is UserState.idle()', () {
      expect(
        cubit.state,
        equals(
           UserState.idle(
            email: '',
            password: '',
          ),
        ),
      );
    });

  

    blocTest<UserCubit, UserState>(
      'emits [UserLoginUp, UserSuccess] when login is successful',
      // seed: () => UserLoginUp(email: user .email, password: user .password),
      build: () {
        when(() => mockUserRepository.login(user.email, user.password))
            .thenAnswer((_) async => user);
        return cubit;
      },
      act: (cubit) => cubit.loginUp(user.email, user.password),
      expect: () => [
        UserLoginUp(email: user.email, password: user.password),
        UserSuccess(email: user.email, password: user.password, user: user),
      ],
    );
    final error = Exception();
    blocTest<UserCubit, UserState>(
      'emits [UserLoginUp, UserError] when login fails',
      build: () {
        when(() => mockUserRepository.login(
              user.email,
              user.password,
            )).thenThrow(error);
        return cubit;
      },
      act: (cubit) => cubit.loginUp(
        user.email,
        user.password,
      ),
      expect: () => [
        UserLoginUp(email: user.email, password: user.password),
        UserError(email: user.email, password: user.password, error: error),
      ],
    );
  });
}
