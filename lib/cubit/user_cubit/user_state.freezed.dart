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
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) idle,
    required TResult Function(String username, String password) loginUp,
    required TResult Function(String username, String password, User user)
        success,
    required TResult Function(String username, String password, Object error)
        error,
    required TResult Function(String username, String password, User user)
        loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? idle,
    TResult? Function(String username, String password)? loginUp,
    TResult? Function(String username, String password, User user)? success,
    TResult? Function(String username, String password, Object error)? error,
    TResult? Function(String username, String password, User user)? loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? idle,
    TResult Function(String username, String password)? loginUp,
    TResult Function(String username, String password, User user)? success,
    TResult Function(String username, String password, Object error)? error,
    TResult Function(String username, String password, User user)? loggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserIdle value) idle,
    required TResult Function(UserLoginUp value) loginUp,
    required TResult Function(UserSuccess value) success,
    required TResult Function(UserError value) error,
    required TResult Function(UserLoggedIn value) loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserIdle value)? idle,
    TResult? Function(UserLoginUp value)? loginUp,
    TResult? Function(UserSuccess value)? success,
    TResult? Function(UserError value)? error,
    TResult? Function(UserLoggedIn value)? loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserIdle value)? idle,
    TResult Function(UserLoginUp value)? loginUp,
    TResult Function(UserSuccess value)? success,
    TResult Function(UserError value)? error,
    TResult Function(UserLoggedIn value)? loggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
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
  $Res call({String username, String password});
}

/// @nodoc
class __$$UserIdleImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserIdleImpl>
    implements _$$UserIdleImplCopyWith<$Res> {
  __$$UserIdleImplCopyWithImpl(
      _$UserIdleImpl _value, $Res Function(_$UserIdleImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$UserIdleImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
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
  const _$UserIdleImpl({required this.username, required this.password})
      : super._();

  @override
  final String username;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState.idle(username: $username, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserState.idle'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserIdleImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserIdleImplCopyWith<_$UserIdleImpl> get copyWith =>
      __$$UserIdleImplCopyWithImpl<_$UserIdleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) idle,
    required TResult Function(String username, String password) loginUp,
    required TResult Function(String username, String password, User user)
        success,
    required TResult Function(String username, String password, Object error)
        error,
    required TResult Function(String username, String password, User user)
        loggedIn,
  }) {
    return idle(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? idle,
    TResult? Function(String username, String password)? loginUp,
    TResult? Function(String username, String password, User user)? success,
    TResult? Function(String username, String password, Object error)? error,
    TResult? Function(String username, String password, User user)? loggedIn,
  }) {
    return idle?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? idle,
    TResult Function(String username, String password)? loginUp,
    TResult Function(String username, String password, User user)? success,
    TResult Function(String username, String password, Object error)? error,
    TResult Function(String username, String password, User user)? loggedIn,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(username, password);
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
    required TResult Function(UserLoggedIn value) loggedIn,
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
    TResult? Function(UserLoggedIn value)? loggedIn,
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
    TResult Function(UserLoggedIn value)? loggedIn,
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
      {required final String username,
      required final String password}) = _$UserIdleImpl;
  const UserIdle._() : super._();

  @override
  String get username;
  @override
  String get password;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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
  $Res call({String username, String password});
}

/// @nodoc
class __$$UserLoginUpImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserLoginUpImpl>
    implements _$$UserLoginUpImplCopyWith<$Res> {
  __$$UserLoginUpImplCopyWithImpl(
      _$UserLoginUpImpl _value, $Res Function(_$UserLoginUpImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$UserLoginUpImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
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
  const _$UserLoginUpImpl({required this.username, required this.password})
      : super._();

  @override
  final String username;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState.loginUp(username: $username, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserState.loginUp'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginUpImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoginUpImplCopyWith<_$UserLoginUpImpl> get copyWith =>
      __$$UserLoginUpImplCopyWithImpl<_$UserLoginUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) idle,
    required TResult Function(String username, String password) loginUp,
    required TResult Function(String username, String password, User user)
        success,
    required TResult Function(String username, String password, Object error)
        error,
    required TResult Function(String username, String password, User user)
        loggedIn,
  }) {
    return loginUp(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? idle,
    TResult? Function(String username, String password)? loginUp,
    TResult? Function(String username, String password, User user)? success,
    TResult? Function(String username, String password, Object error)? error,
    TResult? Function(String username, String password, User user)? loggedIn,
  }) {
    return loginUp?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? idle,
    TResult Function(String username, String password)? loginUp,
    TResult Function(String username, String password, User user)? success,
    TResult Function(String username, String password, Object error)? error,
    TResult Function(String username, String password, User user)? loggedIn,
    required TResult orElse(),
  }) {
    if (loginUp != null) {
      return loginUp(username, password);
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
    required TResult Function(UserLoggedIn value) loggedIn,
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
    TResult? Function(UserLoggedIn value)? loggedIn,
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
    TResult Function(UserLoggedIn value)? loggedIn,
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
      {required final String username,
      required final String password}) = _$UserLoginUpImpl;
  const UserLoginUp._() : super._();

  @override
  String get username;
  @override
  String get password;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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
  $Res call({String username, String password, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserSuccessImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserSuccessImpl>
    implements _$$UserSuccessImplCopyWith<$Res> {
  __$$UserSuccessImplCopyWithImpl(
      _$UserSuccessImpl _value, $Res Function(_$UserSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? user = null,
  }) {
    return _then(_$UserSuccessImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
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
      {required this.username, required this.password, required this.user})
      : super._();

  @override
  final String username;
  @override
  final String password;
  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState.success(username: $username, password: $password, user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserState.success'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSuccessImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password, user);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSuccessImplCopyWith<_$UserSuccessImpl> get copyWith =>
      __$$UserSuccessImplCopyWithImpl<_$UserSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) idle,
    required TResult Function(String username, String password) loginUp,
    required TResult Function(String username, String password, User user)
        success,
    required TResult Function(String username, String password, Object error)
        error,
    required TResult Function(String username, String password, User user)
        loggedIn,
  }) {
    return success(username, password, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? idle,
    TResult? Function(String username, String password)? loginUp,
    TResult? Function(String username, String password, User user)? success,
    TResult? Function(String username, String password, Object error)? error,
    TResult? Function(String username, String password, User user)? loggedIn,
  }) {
    return success?.call(username, password, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? idle,
    TResult Function(String username, String password)? loginUp,
    TResult Function(String username, String password, User user)? success,
    TResult Function(String username, String password, Object error)? error,
    TResult Function(String username, String password, User user)? loggedIn,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(username, password, user);
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
    required TResult Function(UserLoggedIn value) loggedIn,
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
    TResult? Function(UserLoggedIn value)? loggedIn,
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
    TResult Function(UserLoggedIn value)? loggedIn,
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
      {required final String username,
      required final String password,
      required final User user}) = _$UserSuccessImpl;
  const UserSuccess._() : super._();

  @override
  String get username;
  @override
  String get password;
  User get user;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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
  $Res call({String username, String password, Object error});
}

/// @nodoc
class __$$UserErrorImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserErrorImpl>
    implements _$$UserErrorImplCopyWith<$Res> {
  __$$UserErrorImplCopyWithImpl(
      _$UserErrorImpl _value, $Res Function(_$UserErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? error = null,
  }) {
    return _then(_$UserErrorImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
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
      {required this.username, required this.password, required this.error})
      : super._();

  @override
  final String username;
  @override
  final String password;
  @override
  final Object error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState.error(username: $username, password: $password, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserState.error'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserErrorImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password,
      const DeepCollectionEquality().hash(error));

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserErrorImplCopyWith<_$UserErrorImpl> get copyWith =>
      __$$UserErrorImplCopyWithImpl<_$UserErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) idle,
    required TResult Function(String username, String password) loginUp,
    required TResult Function(String username, String password, User user)
        success,
    required TResult Function(String username, String password, Object error)
        error,
    required TResult Function(String username, String password, User user)
        loggedIn,
  }) {
    return error(username, password, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? idle,
    TResult? Function(String username, String password)? loginUp,
    TResult? Function(String username, String password, User user)? success,
    TResult? Function(String username, String password, Object error)? error,
    TResult? Function(String username, String password, User user)? loggedIn,
  }) {
    return error?.call(username, password, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? idle,
    TResult Function(String username, String password)? loginUp,
    TResult Function(String username, String password, User user)? success,
    TResult Function(String username, String password, Object error)? error,
    TResult Function(String username, String password, User user)? loggedIn,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(username, password, this.error);
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
    required TResult Function(UserLoggedIn value) loggedIn,
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
    TResult? Function(UserLoggedIn value)? loggedIn,
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
    TResult Function(UserLoggedIn value)? loggedIn,
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
      {required final String username,
      required final String password,
      required final Object error}) = _$UserErrorImpl;
  const UserError._() : super._();

  @override
  String get username;
  @override
  String get password;
  Object get error;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserErrorImplCopyWith<_$UserErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserLoggedInImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserLoggedInImplCopyWith(
          _$UserLoggedInImpl value, $Res Function(_$UserLoggedInImpl) then) =
      __$$UserLoggedInImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserLoggedInImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserLoggedInImpl>
    implements _$$UserLoggedInImplCopyWith<$Res> {
  __$$UserLoggedInImplCopyWithImpl(
      _$UserLoggedInImpl _value, $Res Function(_$UserLoggedInImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? user = null,
  }) {
    return _then(_$UserLoggedInImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UserLoggedInImpl extends UserLoggedIn with DiagnosticableTreeMixin {
  const _$UserLoggedInImpl(
      {required this.username, required this.password, required this.user})
      : super._();

  @override
  final String username;
  @override
  final String password;
  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState.loggedIn(username: $username, password: $password, user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserState.loggedIn'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoggedInImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password, user);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoggedInImplCopyWith<_$UserLoggedInImpl> get copyWith =>
      __$$UserLoggedInImplCopyWithImpl<_$UserLoggedInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) idle,
    required TResult Function(String username, String password) loginUp,
    required TResult Function(String username, String password, User user)
        success,
    required TResult Function(String username, String password, Object error)
        error,
    required TResult Function(String username, String password, User user)
        loggedIn,
  }) {
    return loggedIn(username, password, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? idle,
    TResult? Function(String username, String password)? loginUp,
    TResult? Function(String username, String password, User user)? success,
    TResult? Function(String username, String password, Object error)? error,
    TResult? Function(String username, String password, User user)? loggedIn,
  }) {
    return loggedIn?.call(username, password, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? idle,
    TResult Function(String username, String password)? loginUp,
    TResult Function(String username, String password, User user)? success,
    TResult Function(String username, String password, Object error)? error,
    TResult Function(String username, String password, User user)? loggedIn,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(username, password, user);
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
    required TResult Function(UserLoggedIn value) loggedIn,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserIdle value)? idle,
    TResult? Function(UserLoginUp value)? loginUp,
    TResult? Function(UserSuccess value)? success,
    TResult? Function(UserError value)? error,
    TResult? Function(UserLoggedIn value)? loggedIn,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserIdle value)? idle,
    TResult Function(UserLoginUp value)? loginUp,
    TResult Function(UserSuccess value)? success,
    TResult Function(UserError value)? error,
    TResult Function(UserLoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class UserLoggedIn extends UserState {
  const factory UserLoggedIn(
      {required final String username,
      required final String password,
      required final User user}) = _$UserLoggedInImpl;
  const UserLoggedIn._() : super._();

  @override
  String get username;
  @override
  String get password;
  User get user;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLoggedInImplCopyWith<_$UserLoggedInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
