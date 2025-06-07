// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateCartRequest _$CreateCartRequestFromJson(Map<String, dynamic> json) {
  return _CreateCartRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateCartRequest {
  int get userId => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  /// Serializes this CreateCartRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateCartRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateCartRequestCopyWith<CreateCartRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCartRequestCopyWith<$Res> {
  factory $CreateCartRequestCopyWith(
          CreateCartRequest value, $Res Function(CreateCartRequest) then) =
      _$CreateCartRequestCopyWithImpl<$Res, CreateCartRequest>;
  @useResult
  $Res call({int userId, DateTime date, List<Product> products, String token});
}

/// @nodoc
class _$CreateCartRequestCopyWithImpl<$Res, $Val extends CreateCartRequest>
    implements $CreateCartRequestCopyWith<$Res> {
  _$CreateCartRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateCartRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? date = null,
    Object? products = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateCartRequestImplCopyWith<$Res>
    implements $CreateCartRequestCopyWith<$Res> {
  factory _$$CreateCartRequestImplCopyWith(_$CreateCartRequestImpl value,
          $Res Function(_$CreateCartRequestImpl) then) =
      __$$CreateCartRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, DateTime date, List<Product> products, String token});
}

/// @nodoc
class __$$CreateCartRequestImplCopyWithImpl<$Res>
    extends _$CreateCartRequestCopyWithImpl<$Res, _$CreateCartRequestImpl>
    implements _$$CreateCartRequestImplCopyWith<$Res> {
  __$$CreateCartRequestImplCopyWithImpl(_$CreateCartRequestImpl _value,
      $Res Function(_$CreateCartRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateCartRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? date = null,
    Object? products = null,
    Object? token = null,
  }) {
    return _then(_$CreateCartRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateCartRequestImpl implements _CreateCartRequest {
  const _$CreateCartRequestImpl(
      {required this.userId,
      required this.date,
      required final List<Product> products,
      required this.token})
      : _products = products;

  factory _$CreateCartRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateCartRequestImplFromJson(json);

  @override
  final int userId;
  @override
  final DateTime date;
  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final String token;

  @override
  String toString() {
    return 'CreateCartRequest(userId: $userId, date: $date, products: $products, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCartRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, date,
      const DeepCollectionEquality().hash(_products), token);

  /// Create a copy of CreateCartRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCartRequestImplCopyWith<_$CreateCartRequestImpl> get copyWith =>
      __$$CreateCartRequestImplCopyWithImpl<_$CreateCartRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateCartRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateCartRequest implements CreateCartRequest {
  const factory _CreateCartRequest(
      {required final int userId,
      required final DateTime date,
      required final List<Product> products,
      required final String token}) = _$CreateCartRequestImpl;

  factory _CreateCartRequest.fromJson(Map<String, dynamic> json) =
      _$CreateCartRequestImpl.fromJson;

  @override
  int get userId;
  @override
  DateTime get date;
  @override
  List<Product> get products;
  @override
  String get token;

  /// Create a copy of CreateCartRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateCartRequestImplCopyWith<_$CreateCartRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductsRequest _$ProductsRequestFromJson(Map<String, dynamic> json) {
  return _ProductsRequest.fromJson(json);
}

/// @nodoc
mixin _$ProductsRequest {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  num get price => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  /// Serializes this ProductsRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsRequestCopyWith<ProductsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsRequestCopyWith<$Res> {
  factory $ProductsRequestCopyWith(
          ProductsRequest value, $Res Function(ProductsRequest) then) =
      _$ProductsRequestCopyWithImpl<$Res, ProductsRequest>;
  @useResult
  $Res call(
      {int id,
      String title,
      num price,
      String category,
      String description,
      String image});
}

/// @nodoc
class _$ProductsRequestCopyWithImpl<$Res, $Val extends ProductsRequest>
    implements $ProductsRequestCopyWith<$Res> {
  _$ProductsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? price = null,
    Object? category = null,
    Object? description = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductsRequestImplCopyWith<$Res>
    implements $ProductsRequestCopyWith<$Res> {
  factory _$$ProductsRequestImplCopyWith(_$ProductsRequestImpl value,
          $Res Function(_$ProductsRequestImpl) then) =
      __$$ProductsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      num price,
      String category,
      String description,
      String image});
}

/// @nodoc
class __$$ProductsRequestImplCopyWithImpl<$Res>
    extends _$ProductsRequestCopyWithImpl<$Res, _$ProductsRequestImpl>
    implements _$$ProductsRequestImplCopyWith<$Res> {
  __$$ProductsRequestImplCopyWithImpl(
      _$ProductsRequestImpl _value, $Res Function(_$ProductsRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? price = null,
    Object? category = null,
    Object? description = null,
    Object? image = null,
  }) {
    return _then(_$ProductsRequestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsRequestImpl implements _ProductsRequest {
  const _$ProductsRequestImpl(
      {required this.id,
      required this.title,
      required this.price,
      required this.category,
      required this.description,
      required this.image});

  factory _$ProductsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsRequestImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final num price;
  @override
  final String category;
  @override
  final String description;
  @override
  final String image;

  @override
  String toString() {
    return 'ProductsRequest(id: $id, title: $title, price: $price, category: $category, description: $description, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, price, category, description, image);

  /// Create a copy of ProductsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsRequestImplCopyWith<_$ProductsRequestImpl> get copyWith =>
      __$$ProductsRequestImplCopyWithImpl<_$ProductsRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsRequestImplToJson(
      this,
    );
  }
}

abstract class _ProductsRequest implements ProductsRequest {
  const factory _ProductsRequest(
      {required final int id,
      required final String title,
      required final num price,
      required final String category,
      required final String description,
      required final String image}) = _$ProductsRequestImpl;

  factory _ProductsRequest.fromJson(Map<String, dynamic> json) =
      _$ProductsRequestImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  num get price;
  @override
  String get category;
  @override
  String get description;
  @override
  String get image;

  /// Create a copy of ProductsRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsRequestImplCopyWith<_$ProductsRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateUserRequest _$CreateUserRequestFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$CreateUserRequest {
  String get userName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  /// Serializes this CreateUserRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateUserRequestCopyWith<CreateUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserRequestCopyWith<$Res> {
  factory $CreateUserRequestCopyWith(
          CreateUserRequest value, $Res Function(CreateUserRequest) then) =
      _$CreateUserRequestCopyWithImpl<$Res, CreateUserRequest>;
  @useResult
  $Res call({String userName, String email, String password, String token});
}

/// @nodoc
class _$CreateUserRequestCopyWithImpl<$Res, $Val extends CreateUserRequest>
    implements $CreateUserRequestCopyWith<$Res> {
  _$CreateUserRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? email = null,
    Object? password = null,
    Object? token = null,
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
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res>
    implements $CreateUserRequestCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userName, String email, String password, String token});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$CreateUserRequestCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? email = null,
    Object? password = null,
    Object? token = null,
  }) {
    return _then(_$UserImpl(
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
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {required this.userName,
      required this.email,
      required this.password,
      required this.token});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String userName;
  @override
  final String email;
  @override
  final String password;
  @override
  final String token;

  @override
  String toString() {
    return 'CreateUserRequest(userName: $userName, email: $email, password: $password, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userName, email, password, token);

  /// Create a copy of CreateUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements CreateUserRequest {
  const factory _User(
      {required final String userName,
      required final String email,
      required final String password,
      required final String token}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get userName;
  @override
  String get email;
  @override
  String get password;
  @override
  String get token;

  /// Create a copy of CreateUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
