// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) idle,
    required TResult Function(String email, String password) loginUp,
    required TResult Function(String email, String password, User user) success,
    required TResult Function(String email, String password, Object error)
        error,
    required TResult Function(String email, String password, User user)
        updating,
    required TResult Function(String email, String password, User user) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? idle,
    TResult? Function(String email, String password)? loginUp,
    TResult? Function(String email, String password, User user)? success,
    TResult? Function(String email, String password, Object error)? error,
    TResult? Function(String email, String password, User user)? updating,
    TResult? Function(String email, String password, User user)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? idle,
    TResult Function(String email, String password)? loginUp,
    TResult Function(String email, String password, User user)? success,
    TResult Function(String email, String password, Object error)? error,
    TResult Function(String email, String password, User user)? updating,
    TResult Function(String email, String password, User user)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserIdle value) idle,
    required TResult Function(UserLoginUp value) loginUp,
    required TResult Function(UserSuccess value) success,
    required TResult Function(UserError value) error,
    required TResult Function(UserUpdating value) updating,
    required TResult Function(UserUpdated value) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserIdle value)? idle,
    TResult? Function(UserLoginUp value)? loginUp,
    TResult? Function(UserSuccess value)? success,
    TResult? Function(UserError value)? error,
    TResult? Function(UserUpdating value)? updating,
    TResult? Function(UserUpdated value)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserIdle value)? idle,
    TResult Function(UserLoginUp value)? loginUp,
    TResult Function(UserSuccess value)? success,
    TResult Function(UserError value)? error,
    TResult Function(UserUpdating value)? updating,
    TResult Function(UserUpdated value)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$UserIdleImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserIdleImplCopyWith(
          _$UserIdleImpl value, $Res Function(_$UserIdleImpl) then) =
      __$$UserIdleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$UserIdleImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserIdleImpl>
    implements _$$UserIdleImplCopyWith<$Res> {
  __$$UserIdleImplCopyWithImpl(
      _$UserIdleImpl _value, $Res Function(_$UserIdleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$UserIdleImpl(
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

class _$UserIdleImpl extends UserIdle with DiagnosticableTreeMixin {
  const _$UserIdleImpl({required this.email, required this.password})
      : super._();

  @override
  final String email;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState.idle(email: $email, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserState.idle'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserIdleImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserIdleImplCopyWith<_$UserIdleImpl> get copyWith =>
      __$$UserIdleImplCopyWithImpl<_$UserIdleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) idle,
    required TResult Function(String email, String password) loginUp,
    required TResult Function(String email, String password, User user) success,
    required TResult Function(String email, String password, Object error)
        error,
    required TResult Function(String email, String password, User user)
        updating,
    required TResult Function(String email, String password, User user) updated,
  }) {
    return idle(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? idle,
    TResult? Function(String email, String password)? loginUp,
    TResult? Function(String email, String password, User user)? success,
    TResult? Function(String email, String password, Object error)? error,
    TResult? Function(String email, String password, User user)? updating,
    TResult? Function(String email, String password, User user)? updated,
  }) {
    return idle?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? idle,
    TResult Function(String email, String password)? loginUp,
    TResult Function(String email, String password, User user)? success,
    TResult Function(String email, String password, Object error)? error,
    TResult Function(String email, String password, User user)? updating,
    TResult Function(String email, String password, User user)? updated,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserIdle value) idle,
    required TResult Function(UserLoginUp value) loginUp,
    required TResult Function(UserSuccess value) success,
    required TResult Function(UserError value) error,
    required TResult Function(UserUpdating value) updating,
    required TResult Function(UserUpdated value) updated,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserIdle value)? idle,
    TResult? Function(UserLoginUp value)? loginUp,
    TResult? Function(UserSuccess value)? success,
    TResult? Function(UserError value)? error,
    TResult? Function(UserUpdating value)? updating,
    TResult? Function(UserUpdated value)? updated,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserIdle value)? idle,
    TResult Function(UserLoginUp value)? loginUp,
    TResult Function(UserSuccess value)? success,
    TResult Function(UserError value)? error,
    TResult Function(UserUpdating value)? updating,
    TResult Function(UserUpdated value)? updated,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class UserIdle extends UserState {
  const factory UserIdle(
      {required final String email,
      required final String password}) = _$UserIdleImpl;
  const UserIdle._() : super._();

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$UserIdleImplCopyWith<_$UserIdleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserLoginUpImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserLoginUpImplCopyWith(
          _$UserLoginUpImpl value, $Res Function(_$UserLoginUpImpl) then) =
      __$$UserLoginUpImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$UserLoginUpImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserLoginUpImpl>
    implements _$$UserLoginUpImplCopyWith<$Res> {
  __$$UserLoginUpImplCopyWithImpl(
      _$UserLoginUpImpl _value, $Res Function(_$UserLoginUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$UserLoginUpImpl(
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

class _$UserLoginUpImpl extends UserLoginUp with DiagnosticableTreeMixin {
  const _$UserLoginUpImpl({required this.email, required this.password})
      : super._();

  @override
  final String email;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState.loginUp(email: $email, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserState.loginUp'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginUpImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoginUpImplCopyWith<_$UserLoginUpImpl> get copyWith =>
      __$$UserLoginUpImplCopyWithImpl<_$UserLoginUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) idle,
    required TResult Function(String email, String password) loginUp,
    required TResult Function(String email, String password, User user) success,
    required TResult Function(String email, String password, Object error)
        error,
    required TResult Function(String email, String password, User user)
        updating,
    required TResult Function(String email, String password, User user) updated,
  }) {
    return loginUp(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? idle,
    TResult? Function(String email, String password)? loginUp,
    TResult? Function(String email, String password, User user)? success,
    TResult? Function(String email, String password, Object error)? error,
    TResult? Function(String email, String password, User user)? updating,
    TResult? Function(String email, String password, User user)? updated,
  }) {
    return loginUp?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? idle,
    TResult Function(String email, String password)? loginUp,
    TResult Function(String email, String password, User user)? success,
    TResult Function(String email, String password, Object error)? error,
    TResult Function(String email, String password, User user)? updating,
    TResult Function(String email, String password, User user)? updated,
    required TResult orElse(),
  }) {
    if (loginUp != null) {
      return loginUp(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserIdle value) idle,
    required TResult Function(UserLoginUp value) loginUp,
    required TResult Function(UserSuccess value) success,
    required TResult Function(UserError value) error,
    required TResult Function(UserUpdating value) updating,
    required TResult Function(UserUpdated value) updated,
  }) {
    return loginUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserIdle value)? idle,
    TResult? Function(UserLoginUp value)? loginUp,
    TResult? Function(UserSuccess value)? success,
    TResult? Function(UserError value)? error,
    TResult? Function(UserUpdating value)? updating,
    TResult? Function(UserUpdated value)? updated,
  }) {
    return loginUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserIdle value)? idle,
    TResult Function(UserLoginUp value)? loginUp,
    TResult Function(UserSuccess value)? success,
    TResult Function(UserError value)? error,
    TResult Function(UserUpdating value)? updating,
    TResult Function(UserUpdated value)? updated,
    required TResult orElse(),
  }) {
    if (loginUp != null) {
      return loginUp(this);
    }
    return orElse();
  }
}

abstract class UserLoginUp extends UserState {
  const factory UserLoginUp(
      {required final String email,
      required final String password}) = _$UserLoginUpImpl;
  const UserLoginUp._() : super._();

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$UserLoginUpImplCopyWith<_$UserLoginUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserSuccessImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserSuccessImplCopyWith(
          _$UserSuccessImpl value, $Res Function(_$UserSuccessImpl) then) =
      __$$UserSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserSuccessImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserSuccessImpl>
    implements _$$UserSuccessImplCopyWith<$Res> {
  __$$UserSuccessImplCopyWithImpl(
      _$UserSuccessImpl _value, $Res Function(_$UserSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? user = null,
  }) {
    return _then(_$UserSuccessImpl(
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

class _$UserSuccessImpl extends UserSuccess with DiagnosticableTreeMixin {
  const _$UserSuccessImpl(
      {required this.email, required this.password, required this.user})
      : super._();

  @override
  final String email;
  @override
  final String password;
  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState.success(email: $email, password: $password, user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserState.success'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSuccessImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSuccessImplCopyWith<_$UserSuccessImpl> get copyWith =>
      __$$UserSuccessImplCopyWithImpl<_$UserSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) idle,
    required TResult Function(String email, String password) loginUp,
    required TResult Function(String email, String password, User user) success,
    required TResult Function(String email, String password, Object error)
        error,
    required TResult Function(String email, String password, User user)
        updating,
    required TResult Function(String email, String password, User user) updated,
  }) {
    return success(email, password, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? idle,
    TResult? Function(String email, String password)? loginUp,
    TResult? Function(String email, String password, User user)? success,
    TResult? Function(String email, String password, Object error)? error,
    TResult? Function(String email, String password, User user)? updating,
    TResult? Function(String email, String password, User user)? updated,
  }) {
    return success?.call(email, password, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? idle,
    TResult Function(String email, String password)? loginUp,
    TResult Function(String email, String password, User user)? success,
    TResult Function(String email, String password, Object error)? error,
    TResult Function(String email, String password, User user)? updating,
    TResult Function(String email, String password, User user)? updated,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(email, password, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserIdle value) idle,
    required TResult Function(UserLoginUp value) loginUp,
    required TResult Function(UserSuccess value) success,
    required TResult Function(UserError value) error,
    required TResult Function(UserUpdating value) updating,
    required TResult Function(UserUpdated value) updated,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserIdle value)? idle,
    TResult? Function(UserLoginUp value)? loginUp,
    TResult? Function(UserSuccess value)? success,
    TResult? Function(UserError value)? error,
    TResult? Function(UserUpdating value)? updating,
    TResult? Function(UserUpdated value)? updated,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserIdle value)? idle,
    TResult Function(UserLoginUp value)? loginUp,
    TResult Function(UserSuccess value)? success,
    TResult Function(UserError value)? error,
    TResult Function(UserUpdating value)? updating,
    TResult Function(UserUpdated value)? updated,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class UserSuccess extends UserState {
  const factory UserSuccess(
      {required final String email,
      required final String password,
      required final User user}) = _$UserSuccessImpl;
  const UserSuccess._() : super._();

  @override
  String get email;
  @override
  String get password;
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$UserSuccessImplCopyWith<_$UserSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserErrorImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserErrorImplCopyWith(
          _$UserErrorImpl value, $Res Function(_$UserErrorImpl) then) =
      __$$UserErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password, Object error});
}

/// @nodoc
class __$$UserErrorImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserErrorImpl>
    implements _$$UserErrorImplCopyWith<$Res> {
  __$$UserErrorImplCopyWithImpl(
      _$UserErrorImpl _value, $Res Function(_$UserErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? error = null,
  }) {
    return _then(_$UserErrorImpl(
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

class _$UserErrorImpl extends UserError with DiagnosticableTreeMixin {
  const _$UserErrorImpl(
      {required this.email, required this.password, required this.error})
      : super._();

  @override
  final String email;
  @override
  final String password;
  @override
  final Object error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState.error(email: $email, password: $password, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserState.error'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserErrorImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, email, password, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserErrorImplCopyWith<_$UserErrorImpl> get copyWith =>
      __$$UserErrorImplCopyWithImpl<_$UserErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) idle,
    required TResult Function(String email, String password) loginUp,
    required TResult Function(String email, String password, User user) success,
    required TResult Function(String email, String password, Object error)
        error,
    required TResult Function(String email, String password, User user)
        updating,
    required TResult Function(String email, String password, User user) updated,
  }) {
    return error(email, password, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? idle,
    TResult? Function(String email, String password)? loginUp,
    TResult? Function(String email, String password, User user)? success,
    TResult? Function(String email, String password, Object error)? error,
    TResult? Function(String email, String password, User user)? updating,
    TResult? Function(String email, String password, User user)? updated,
  }) {
    return error?.call(email, password, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? idle,
    TResult Function(String email, String password)? loginUp,
    TResult Function(String email, String password, User user)? success,
    TResult Function(String email, String password, Object error)? error,
    TResult Function(String email, String password, User user)? updating,
    TResult Function(String email, String password, User user)? updated,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(email, password, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserIdle value) idle,
    required TResult Function(UserLoginUp value) loginUp,
    required TResult Function(UserSuccess value) success,
    required TResult Function(UserError value) error,
    required TResult Function(UserUpdating value) updating,
    required TResult Function(UserUpdated value) updated,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserIdle value)? idle,
    TResult? Function(UserLoginUp value)? loginUp,
    TResult? Function(UserSuccess value)? success,
    TResult? Function(UserError value)? error,
    TResult? Function(UserUpdating value)? updating,
    TResult? Function(UserUpdated value)? updated,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserIdle value)? idle,
    TResult Function(UserLoginUp value)? loginUp,
    TResult Function(UserSuccess value)? success,
    TResult Function(UserError value)? error,
    TResult Function(UserUpdating value)? updating,
    TResult Function(UserUpdated value)? updated,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UserError extends UserState {
  const factory UserError(
      {required final String email,
      required final String password,
      required final Object error}) = _$UserErrorImpl;
  const UserError._() : super._();

  @override
  String get email;
  @override
  String get password;
  Object get error;
  @override
  @JsonKey(ignore: true)
  _$$UserErrorImplCopyWith<_$UserErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserUpdatingImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserUpdatingImplCopyWith(
          _$UserUpdatingImpl value, $Res Function(_$UserUpdatingImpl) then) =
      __$$UserUpdatingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserUpdatingImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserUpdatingImpl>
    implements _$$UserUpdatingImplCopyWith<$Res> {
  __$$UserUpdatingImplCopyWithImpl(
      _$UserUpdatingImpl _value, $Res Function(_$UserUpdatingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? user = null,
  }) {
    return _then(_$UserUpdatingImpl(
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

class _$UserUpdatingImpl extends UserUpdating with DiagnosticableTreeMixin {
  const _$UserUpdatingImpl(
      {required this.email, required this.password, required this.user})
      : super._();

  @override
  final String email;
  @override
  final String password;
  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState.updating(email: $email, password: $password, user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserState.updating'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserUpdatingImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUpdatingImplCopyWith<_$UserUpdatingImpl> get copyWith =>
      __$$UserUpdatingImplCopyWithImpl<_$UserUpdatingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) idle,
    required TResult Function(String email, String password) loginUp,
    required TResult Function(String email, String password, User user) success,
    required TResult Function(String email, String password, Object error)
        error,
    required TResult Function(String email, String password, User user)
        updating,
    required TResult Function(String email, String password, User user) updated,
  }) {
    return updating(email, password, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? idle,
    TResult? Function(String email, String password)? loginUp,
    TResult? Function(String email, String password, User user)? success,
    TResult? Function(String email, String password, Object error)? error,
    TResult? Function(String email, String password, User user)? updating,
    TResult? Function(String email, String password, User user)? updated,
  }) {
    return updating?.call(email, password, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? idle,
    TResult Function(String email, String password)? loginUp,
    TResult Function(String email, String password, User user)? success,
    TResult Function(String email, String password, Object error)? error,
    TResult Function(String email, String password, User user)? updating,
    TResult Function(String email, String password, User user)? updated,
    required TResult orElse(),
  }) {
    if (updating != null) {
      return updating(email, password, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserIdle value) idle,
    required TResult Function(UserLoginUp value) loginUp,
    required TResult Function(UserSuccess value) success,
    required TResult Function(UserError value) error,
    required TResult Function(UserUpdating value) updating,
    required TResult Function(UserUpdated value) updated,
  }) {
    return updating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserIdle value)? idle,
    TResult? Function(UserLoginUp value)? loginUp,
    TResult? Function(UserSuccess value)? success,
    TResult? Function(UserError value)? error,
    TResult? Function(UserUpdating value)? updating,
    TResult? Function(UserUpdated value)? updated,
  }) {
    return updating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserIdle value)? idle,
    TResult Function(UserLoginUp value)? loginUp,
    TResult Function(UserSuccess value)? success,
    TResult Function(UserError value)? error,
    TResult Function(UserUpdating value)? updating,
    TResult Function(UserUpdated value)? updated,
    required TResult orElse(),
  }) {
    if (updating != null) {
      return updating(this);
    }
    return orElse();
  }
}

abstract class UserUpdating extends UserState {
  const factory UserUpdating(
      {required final String email,
      required final String password,
      required final User user}) = _$UserUpdatingImpl;
  const UserUpdating._() : super._();

  @override
  String get email;
  @override
  String get password;
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$UserUpdatingImplCopyWith<_$UserUpdatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserUpdatedImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserUpdatedImplCopyWith(
          _$UserUpdatedImpl value, $Res Function(_$UserUpdatedImpl) then) =
      __$$UserUpdatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserUpdatedImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserUpdatedImpl>
    implements _$$UserUpdatedImplCopyWith<$Res> {
  __$$UserUpdatedImplCopyWithImpl(
      _$UserUpdatedImpl _value, $Res Function(_$UserUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? user = null,
  }) {
    return _then(_$UserUpdatedImpl(
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

class _$UserUpdatedImpl extends UserUpdated with DiagnosticableTreeMixin {
  const _$UserUpdatedImpl(
      {required this.email, required this.password, required this.user})
      : super._();

  @override
  final String email;
  @override
  final String password;
  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState.updated(email: $email, password: $password, user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserState.updated'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserUpdatedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUpdatedImplCopyWith<_$UserUpdatedImpl> get copyWith =>
      __$$UserUpdatedImplCopyWithImpl<_$UserUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) idle,
    required TResult Function(String email, String password) loginUp,
    required TResult Function(String email, String password, User user) success,
    required TResult Function(String email, String password, Object error)
        error,
    required TResult Function(String email, String password, User user)
        updating,
    required TResult Function(String email, String password, User user) updated,
  }) {
    return updated(email, password, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? idle,
    TResult? Function(String email, String password)? loginUp,
    TResult? Function(String email, String password, User user)? success,
    TResult? Function(String email, String password, Object error)? error,
    TResult? Function(String email, String password, User user)? updating,
    TResult? Function(String email, String password, User user)? updated,
  }) {
    return updated?.call(email, password, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? idle,
    TResult Function(String email, String password)? loginUp,
    TResult Function(String email, String password, User user)? success,
    TResult Function(String email, String password, Object error)? error,
    TResult Function(String email, String password, User user)? updating,
    TResult Function(String email, String password, User user)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(email, password, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserIdle value) idle,
    required TResult Function(UserLoginUp value) loginUp,
    required TResult Function(UserSuccess value) success,
    required TResult Function(UserError value) error,
    required TResult Function(UserUpdating value) updating,
    required TResult Function(UserUpdated value) updated,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserIdle value)? idle,
    TResult? Function(UserLoginUp value)? loginUp,
    TResult? Function(UserSuccess value)? success,
    TResult? Function(UserError value)? error,
    TResult? Function(UserUpdating value)? updating,
    TResult? Function(UserUpdated value)? updated,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserIdle value)? idle,
    TResult Function(UserLoginUp value)? loginUp,
    TResult Function(UserSuccess value)? success,
    TResult Function(UserError value)? error,
    TResult Function(UserUpdating value)? updating,
    TResult Function(UserUpdated value)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class UserUpdated extends UserState {
  const factory UserUpdated(
      {required final String email,
      required final String password,
      required final User user}) = _$UserUpdatedImpl;
  const UserUpdated._() : super._();

  @override
  String get email;
  @override
  String get password;
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$UserUpdatedImplCopyWith<_$UserUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
