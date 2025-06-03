// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserProfileState {
  StringInput get firstName => throw _privateConstructorUsedError;
  StringInput get finalName => throw _privateConstructorUsedError;
  StringInput get city => throw _privateConstructorUsedError;
  StringInput get street => throw _privateConstructorUsedError;
  StringInput get number => throw _privateConstructorUsedError;
  StringInput get zipcode => throw _privateConstructorUsedError;
  UserProfileStatus get status => throw _privateConstructorUsedError;

  /// Create a copy of UserProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileStateCopyWith<UserProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileStateCopyWith<$Res> {
  factory $UserProfileStateCopyWith(
          UserProfileState value, $Res Function(UserProfileState) then) =
      _$UserProfileStateCopyWithImpl<$Res, UserProfileState>;
  @useResult
  $Res call(
      {StringInput firstName,
      StringInput finalName,
      StringInput city,
      StringInput street,
      StringInput number,
      StringInput zipcode,
      UserProfileStatus status});
}

/// @nodoc
class _$UserProfileStateCopyWithImpl<$Res, $Val extends UserProfileState>
    implements $UserProfileStateCopyWith<$Res> {
  _$UserProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? finalName = null,
    Object? city = null,
    Object? street = null,
    Object? number = null,
    Object? zipcode = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as StringInput,
      finalName: null == finalName
          ? _value.finalName
          : finalName // ignore: cast_nullable_to_non_nullable
              as StringInput,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as StringInput,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as StringInput,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as StringInput,
      zipcode: null == zipcode
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as StringInput,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserProfileStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProfileStateImplCopyWith<$Res>
    implements $UserProfileStateCopyWith<$Res> {
  factory _$$UserProfileStateImplCopyWith(_$UserProfileStateImpl value,
          $Res Function(_$UserProfileStateImpl) then) =
      __$$UserProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringInput firstName,
      StringInput finalName,
      StringInput city,
      StringInput street,
      StringInput number,
      StringInput zipcode,
      UserProfileStatus status});
}

/// @nodoc
class __$$UserProfileStateImplCopyWithImpl<$Res>
    extends _$UserProfileStateCopyWithImpl<$Res, _$UserProfileStateImpl>
    implements _$$UserProfileStateImplCopyWith<$Res> {
  __$$UserProfileStateImplCopyWithImpl(_$UserProfileStateImpl _value,
      $Res Function(_$UserProfileStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? finalName = null,
    Object? city = null,
    Object? street = null,
    Object? number = null,
    Object? zipcode = null,
    Object? status = null,
  }) {
    return _then(_$UserProfileStateImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as StringInput,
      finalName: null == finalName
          ? _value.finalName
          : finalName // ignore: cast_nullable_to_non_nullable
              as StringInput,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as StringInput,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as StringInput,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as StringInput,
      zipcode: null == zipcode
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as StringInput,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserProfileStatus,
    ));
  }
}

/// @nodoc

class _$UserProfileStateImpl extends _UserProfileState {
  const _$UserProfileStateImpl(
      {required this.firstName,
      required this.finalName,
      required this.city,
      required this.street,
      required this.number,
      required this.zipcode,
      required this.status})
      : super._();

  @override
  final StringInput firstName;
  @override
  final StringInput finalName;
  @override
  final StringInput city;
  @override
  final StringInput street;
  @override
  final StringInput number;
  @override
  final StringInput zipcode;
  @override
  final UserProfileStatus status;

  @override
  String toString() {
    return 'UserProfileState(firstName: $firstName, finalName: $finalName, city: $city, street: $street, number: $number, zipcode: $zipcode, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileStateImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.finalName, finalName) ||
                other.finalName == finalName) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.zipcode, zipcode) || other.zipcode == zipcode) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, firstName, finalName, city, street, number, zipcode, status);

  /// Create a copy of UserProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileStateImplCopyWith<_$UserProfileStateImpl> get copyWith =>
      __$$UserProfileStateImplCopyWithImpl<_$UserProfileStateImpl>(
          this, _$identity);
}

abstract class _UserProfileState extends UserProfileState {
  const factory _UserProfileState(
      {required final StringInput firstName,
      required final StringInput finalName,
      required final StringInput city,
      required final StringInput street,
      required final StringInput number,
      required final StringInput zipcode,
      required final UserProfileStatus status}) = _$UserProfileStateImpl;
  const _UserProfileState._() : super._();

  @override
  StringInput get firstName;
  @override
  StringInput get finalName;
  @override
  StringInput get city;
  @override
  StringInput get street;
  @override
  StringInput get number;
  @override
  StringInput get zipcode;
  @override
  UserProfileStatus get status;

  /// Create a copy of UserProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileStateImplCopyWith<_$UserProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
