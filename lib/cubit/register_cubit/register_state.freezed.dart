// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterState {
  String get userName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String email, String password)
        idle,
    required TResult Function(String userName, String email, String password)
        signingUp,
    required TResult Function(
            String userName, String email, String password, User user)
        success,
    required TResult Function(
            String userName, String email, String password, Object error)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String email, String password)? idle,
    TResult? Function(String userName, String email, String password)?
        signingUp,
    TResult? Function(
            String userName, String email, String password, User user)?
        success,
    TResult? Function(
            String userName, String email, String password, Object error)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String email, String password)? idle,
    TResult Function(String userName, String email, String password)? signingUp,
    TResult Function(String userName, String email, String password, User user)?
        success,
    TResult Function(
            String userName, String email, String password, Object error)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterIdle value) idle,
    required TResult Function(RegisterSigningUp value) signingUp,
    required TResult Function(RegisterSuccess value) success,
    required TResult Function(RegisterError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterIdle value)? idle,
    TResult? Function(RegisterSigningUp value)? signingUp,
    TResult? Function(RegisterSuccess value)? success,
    TResult? Function(RegisterError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterIdle value)? idle,
    TResult Function(RegisterSigningUp value)? signingUp,
    TResult Function(RegisterSuccess value)? success,
    TResult Function(RegisterError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call({String userName, String email, String password});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterIdleImplCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$RegisterIdleImplCopyWith(
          _$RegisterIdleImpl value, $Res Function(_$RegisterIdleImpl) then) =
      __$$RegisterIdleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userName, String email, String password});
}

/// @nodoc
class __$$RegisterIdleImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterIdleImpl>
    implements _$$RegisterIdleImplCopyWith<$Res> {
  __$$RegisterIdleImplCopyWithImpl(
      _$RegisterIdleImpl _value, $Res Function(_$RegisterIdleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$RegisterIdleImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterIdleImpl extends RegisterIdle {
  const _$RegisterIdleImpl(
      {required this.userName, required this.email, required this.password})
      : super._();

  @override
  final String userName;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'RegisterState.idle(userName: $userName, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterIdleImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterIdleImplCopyWith<_$RegisterIdleImpl> get copyWith =>
      __$$RegisterIdleImplCopyWithImpl<_$RegisterIdleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String email, String password)
        idle,
    required TResult Function(String userName, String email, String password)
        signingUp,
    required TResult Function(
            String userName, String email, String password, User user)
        success,
    required TResult Function(
            String userName, String email, String password, Object error)
        error,
  }) {
    return idle(userName, email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String email, String password)? idle,
    TResult? Function(String userName, String email, String password)?
        signingUp,
    TResult? Function(
            String userName, String email, String password, User user)?
        success,
    TResult? Function(
            String userName, String email, String password, Object error)?
        error,
  }) {
    return idle?.call(userName, email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String email, String password)? idle,
    TResult Function(String userName, String email, String password)? signingUp,
    TResult Function(String userName, String email, String password, User user)?
        success,
    TResult Function(
            String userName, String email, String password, Object error)?
        error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(userName, email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterIdle value) idle,
    required TResult Function(RegisterSigningUp value) signingUp,
    required TResult Function(RegisterSuccess value) success,
    required TResult Function(RegisterError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterIdle value)? idle,
    TResult? Function(RegisterSigningUp value)? signingUp,
    TResult? Function(RegisterSuccess value)? success,
    TResult? Function(RegisterError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterIdle value)? idle,
    TResult Function(RegisterSigningUp value)? signingUp,
    TResult Function(RegisterSuccess value)? success,
    TResult Function(RegisterError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class RegisterIdle extends RegisterState {
  const factory RegisterIdle(
      {required final String userName,
      required final String email,
      required final String password}) = _$RegisterIdleImpl;
  const RegisterIdle._() : super._();

  @override
  String get userName;
  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$RegisterIdleImplCopyWith<_$RegisterIdleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterSigningUpImplCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$RegisterSigningUpImplCopyWith(_$RegisterSigningUpImpl value,
          $Res Function(_$RegisterSigningUpImpl) then) =
      __$$RegisterSigningUpImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userName, String email, String password});
}

/// @nodoc
class __$$RegisterSigningUpImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterSigningUpImpl>
    implements _$$RegisterSigningUpImplCopyWith<$Res> {
  __$$RegisterSigningUpImplCopyWithImpl(_$RegisterSigningUpImpl _value,
      $Res Function(_$RegisterSigningUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$RegisterSigningUpImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterSigningUpImpl extends RegisterSigningUp {
  const _$RegisterSigningUpImpl(
      {required this.userName, required this.email, required this.password})
      : super._();

  @override
  final String userName;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'RegisterState.signingUp(userName: $userName, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterSigningUpImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterSigningUpImplCopyWith<_$RegisterSigningUpImpl> get copyWith =>
      __$$RegisterSigningUpImplCopyWithImpl<_$RegisterSigningUpImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String email, String password)
        idle,
    required TResult Function(String userName, String email, String password)
        signingUp,
    required TResult Function(
            String userName, String email, String password, User user)
        success,
    required TResult Function(
            String userName, String email, String password, Object error)
        error,
  }) {
    return signingUp(userName, email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String email, String password)? idle,
    TResult? Function(String userName, String email, String password)?
        signingUp,
    TResult? Function(
            String userName, String email, String password, User user)?
        success,
    TResult? Function(
            String userName, String email, String password, Object error)?
        error,
  }) {
    return signingUp?.call(userName, email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String email, String password)? idle,
    TResult Function(String userName, String email, String password)? signingUp,
    TResult Function(String userName, String email, String password, User user)?
        success,
    TResult Function(
            String userName, String email, String password, Object error)?
        error,
    required TResult orElse(),
  }) {
    if (signingUp != null) {
      return signingUp(userName, email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterIdle value) idle,
    required TResult Function(RegisterSigningUp value) signingUp,
    required TResult Function(RegisterSuccess value) success,
    required TResult Function(RegisterError value) error,
  }) {
    return signingUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterIdle value)? idle,
    TResult? Function(RegisterSigningUp value)? signingUp,
    TResult? Function(RegisterSuccess value)? success,
    TResult? Function(RegisterError value)? error,
  }) {
    return signingUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterIdle value)? idle,
    TResult Function(RegisterSigningUp value)? signingUp,
    TResult Function(RegisterSuccess value)? success,
    TResult Function(RegisterError value)? error,
    required TResult orElse(),
  }) {
    if (signingUp != null) {
      return signingUp(this);
    }
    return orElse();
  }
}

abstract class RegisterSigningUp extends RegisterState {
  const factory RegisterSigningUp(
      {required final String userName,
      required final String email,
      required final String password}) = _$RegisterSigningUpImpl;
  const RegisterSigningUp._() : super._();

  @override
  String get userName;
  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$RegisterSigningUpImplCopyWith<_$RegisterSigningUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterSuccessImplCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$RegisterSuccessImplCopyWith(_$RegisterSuccessImpl value,
          $Res Function(_$RegisterSuccessImpl) then) =
      __$$RegisterSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userName, String email, String password, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$RegisterSuccessImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterSuccessImpl>
    implements _$$RegisterSuccessImplCopyWith<$Res> {
  __$$RegisterSuccessImplCopyWithImpl(
      _$RegisterSuccessImpl _value, $Res Function(_$RegisterSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? email = null,
    Object? password = null,
    Object? user = null,
  }) {
    return _then(_$RegisterSuccessImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$RegisterSuccessImpl extends RegisterSuccess {
  const _$RegisterSuccessImpl(
      {required this.userName,
      required this.email,
      required this.password,
      required this.user})
      : super._();

  @override
  final String userName;
  @override
  final String email;
  @override
  final String password;
  @override
  final User user;

  @override
  String toString() {
    return 'RegisterState.success(userName: $userName, email: $email, password: $password, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterSuccessImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, email, password, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterSuccessImplCopyWith<_$RegisterSuccessImpl> get copyWith =>
      __$$RegisterSuccessImplCopyWithImpl<_$RegisterSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String email, String password)
        idle,
    required TResult Function(String userName, String email, String password)
        signingUp,
    required TResult Function(
            String userName, String email, String password, User user)
        success,
    required TResult Function(
            String userName, String email, String password, Object error)
        error,
  }) {
    return success(userName, email, password, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String email, String password)? idle,
    TResult? Function(String userName, String email, String password)?
        signingUp,
    TResult? Function(
            String userName, String email, String password, User user)?
        success,
    TResult? Function(
            String userName, String email, String password, Object error)?
        error,
  }) {
    return success?.call(userName, email, password, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String email, String password)? idle,
    TResult Function(String userName, String email, String password)? signingUp,
    TResult Function(String userName, String email, String password, User user)?
        success,
    TResult Function(
            String userName, String email, String password, Object error)?
        error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(userName, email, password, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterIdle value) idle,
    required TResult Function(RegisterSigningUp value) signingUp,
    required TResult Function(RegisterSuccess value) success,
    required TResult Function(RegisterError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterIdle value)? idle,
    TResult? Function(RegisterSigningUp value)? signingUp,
    TResult? Function(RegisterSuccess value)? success,
    TResult? Function(RegisterError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterIdle value)? idle,
    TResult Function(RegisterSigningUp value)? signingUp,
    TResult Function(RegisterSuccess value)? success,
    TResult Function(RegisterError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class RegisterSuccess extends RegisterState {
  const factory RegisterSuccess(
      {required final String userName,
      required final String email,
      required final String password,
      required final User user}) = _$RegisterSuccessImpl;
  const RegisterSuccess._() : super._();

  @override
  String get userName;
  @override
  String get email;
  @override
  String get password;
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$RegisterSuccessImplCopyWith<_$RegisterSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterErrorImplCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$RegisterErrorImplCopyWith(
          _$RegisterErrorImpl value, $Res Function(_$RegisterErrorImpl) then) =
      __$$RegisterErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userName, String email, String password, Object error});
}

/// @nodoc
class __$$RegisterErrorImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterErrorImpl>
    implements _$$RegisterErrorImplCopyWith<$Res> {
  __$$RegisterErrorImplCopyWithImpl(
      _$RegisterErrorImpl _value, $Res Function(_$RegisterErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? email = null,
    Object? password = null,
    Object? error = null,
  }) {
    return _then(_$RegisterErrorImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$RegisterErrorImpl extends RegisterError {
  const _$RegisterErrorImpl(
      {required this.userName,
      required this.email,
      required this.password,
      required this.error})
      : super._();

  @override
  final String userName;
  @override
  final String email;
  @override
  final String password;
  @override
  final Object error;

  @override
  String toString() {
    return 'RegisterState.error(userName: $userName, email: $email, password: $password, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterErrorImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, email, password,
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterErrorImplCopyWith<_$RegisterErrorImpl> get copyWith =>
      __$$RegisterErrorImplCopyWithImpl<_$RegisterErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String email, String password)
        idle,
    required TResult Function(String userName, String email, String password)
        signingUp,
    required TResult Function(
            String userName, String email, String password, User user)
        success,
    required TResult Function(
            String userName, String email, String password, Object error)
        error,
  }) {
    return error(userName, email, password, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String email, String password)? idle,
    TResult? Function(String userName, String email, String password)?
        signingUp,
    TResult? Function(
            String userName, String email, String password, User user)?
        success,
    TResult? Function(
            String userName, String email, String password, Object error)?
        error,
  }) {
    return error?.call(userName, email, password, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String email, String password)? idle,
    TResult Function(String userName, String email, String password)? signingUp,
    TResult Function(String userName, String email, String password, User user)?
        success,
    TResult Function(
            String userName, String email, String password, Object error)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(userName, email, password, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterIdle value) idle,
    required TResult Function(RegisterSigningUp value) signingUp,
    required TResult Function(RegisterSuccess value) success,
    required TResult Function(RegisterError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterIdle value)? idle,
    TResult? Function(RegisterSigningUp value)? signingUp,
    TResult? Function(RegisterSuccess value)? success,
    TResult? Function(RegisterError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterIdle value)? idle,
    TResult Function(RegisterSigningUp value)? signingUp,
    TResult Function(RegisterSuccess value)? success,
    TResult Function(RegisterError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RegisterError extends RegisterState {
  const factory RegisterError(
      {required final String userName,
      required final String email,
      required final String password,
      required final Object error}) = _$RegisterErrorImpl;
  const RegisterError._() : super._();

  @override
  String get userName;
  @override
  String get email;
  @override
  String get password;
  Object get error;
  @override
  @JsonKey(ignore: true)
  _$$RegisterErrorImplCopyWith<_$RegisterErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
