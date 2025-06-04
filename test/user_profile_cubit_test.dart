import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_online_shop/cubit/user_profile_cubit/user_profile_cubit.dart';
import 'package:flutter_online_shop/cubit/user_profile_cubit/user_profile_state.dart';
import 'package:flutter_online_shop/models/user.dart';
import 'package:flutter_online_shop/models/name.dart';
import 'package:flutter_online_shop/models/address.dart';
import 'package:flutter_online_shop/service/user_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockUserRepository extends Mock implements IUserRepository {}

void main() {
  group('UserProfileCubit', () {
    late UserProfileCubit cubit;
    late MockUserRepository mockUserRepository;

    const user = User(
      id: 1,
      email: 'test@example.com',
      userName: 'testuser',
      password: 'password',
      name: Name(
        firstName: 'John',
        finalName: 'Doe',
      ),
      address: Address(
        city: 'City',
        street: 'Street',
        number: '123',
        zipcode: '12345',
      ),
      token: 'testtoken',
    );

    setUp(() {
      mockUserRepository = MockUserRepository();
      cubit = UserProfileCubit(mockUserRepository, user: user);

      SharedPreferences.setMockInitialValues({});
    });

    tearDown(() {
      cubit.close();
    });

    test('initial state is correct', () {
      expect(
          cubit.state,
          equals(const UserProfileState(
            finalName: StringInput.pure(value: 'Doe'),
            firstName: StringInput.pure(value: 'John'),
            city: StringInput.pure(value: 'City'),
            street: StringInput.pure(value: 'Street'),
            number: StringInput.pure(value: '123'),
            zipcode: StringInput.pure(value: '12345'),
            status: UserProfileStatus.idle,
          )));
    });

    blocTest<UserProfileCubit, UserProfileState>(
      'emits updated state when onFirstChanged is called',
      build: () => cubit,
      act: (cubit) => cubit.onFirstChanged('Jane'),
      expect: () => [
        const UserProfileState(
          finalName: StringInput.pure(value: 'Doe'),
          firstName: StringInput.dirty(value: 'Jane'),
          city: StringInput.pure(value: 'City'),
          street: StringInput.pure(value: 'Street'),
          number: StringInput.pure(value: '123'),
          zipcode: StringInput.pure(value: '12345'),
          status: UserProfileStatus.idle,
        ),
      ],
    );

    final error = Exception('Failed to update user');
    blocTest<UserProfileCubit, UserProfileState>(
      'emits updated state when onSave fails',
      build: () {
        when(() => mockUserRepository.userUpdated).thenThrow(error);
        return cubit;
      },
      act: (cubit) {
        cubit.onFinalNameChanged('Dos');
        cubit.onSave();
      },
      expect: () => [
        const UserProfileState(
          finalName: StringInput.dirty(value: 'Dos'),
          firstName: StringInput.pure(value: 'John'),
          city: StringInput.pure(value: 'City'),
          street: StringInput.pure(value: 'Street'),
          number: StringInput.pure(value: '123'),
          zipcode: StringInput.pure(value: '12345'),
          status: UserProfileStatus.idle,
        ),
        const UserProfileState(
          finalName: StringInput.dirty(value: 'Dos'),
          firstName: StringInput.pure(value: 'John'),
          city: StringInput.pure(value: 'City'),
          street: StringInput.pure(value: 'Street'),
          number: StringInput.pure(value: '123'),
          zipcode: StringInput.pure(value: '12345'),
          status: UserProfileStatus.updating,
        ),
        const UserProfileState(
          finalName: StringInput.dirty(value: 'Dos'),
          firstName: StringInput.pure(value: 'John'),
          city: StringInput.pure(value: 'City'),
          street: StringInput.pure(value: 'Street'),
          number: StringInput.pure(value: '123'),
          zipcode: StringInput.pure(value: '12345'),
          status: UserProfileStatus.error,
        ),
        const UserProfileState(
          finalName: StringInput.dirty(value: 'Dos'),
          firstName: StringInput.pure(value: 'John'),
          city: StringInput.pure(value: 'City'),
          street: StringInput.pure(value: 'Street'),
          number: StringInput.pure(value: '123'),
          zipcode: StringInput.pure(value: '12345'),
          status: UserProfileStatus.idle,
        ),
      ],
    );

    blocTest<UserProfileCubit, UserProfileState>(
      'emits updated state when delete is successful',
      build: () {
        when(() => mockUserRepository.deleteDetailInfo(user))
            .thenAnswer((_) async {});
        return cubit;
      },
      act: (cubit) => cubit.deleteDetailInfo(),
      expect: () => [
        const UserProfileState(
          finalName: StringInput.pure(value: 'Doe'),
          firstName: StringInput.pure(value: 'John'),
          city: StringInput.pure(value: 'City'),
          street: StringInput.pure(value: 'Street'),
          number: StringInput.pure(value: '123'),
          zipcode: StringInput.pure(value: '12345'),
          status: UserProfileStatus.deleting,
        ),
        const UserProfileState(
          finalName: StringInput.pure(value: 'Doe'),
          firstName: StringInput.pure(value: 'John'),
          city: StringInput.pure(value: 'City'),
          street: StringInput.pure(value: 'Street'),
          number: StringInput.pure(value: '123'),
          zipcode: StringInput.pure(value: '12345'),
          status: UserProfileStatus.deleted,
        ),
        const UserProfileState(
          finalName: StringInput.pure(value: 'Doe'),
          firstName: StringInput.pure(value: 'John'),
          city: StringInput.pure(value: 'City'),
          street: StringInput.pure(value: 'Street'),
          number: StringInput.pure(value: '123'),
          zipcode: StringInput.pure(value: '12345'),
          status: UserProfileStatus.idle,
        ),
      ],
    );
  });
}
