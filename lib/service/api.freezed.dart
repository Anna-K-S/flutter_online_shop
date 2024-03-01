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
  List<CartProduct> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateCartRequestCopyWith<CreateCartRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCartRequestCopyWith<$Res> {
  factory $CreateCartRequestCopyWith(
          CreateCartRequest value, $Res Function(CreateCartRequest) then) =
      _$CreateCartRequestCopyWithImpl<$Res, CreateCartRequest>;
  @useResult
  $Res call({int userId, DateTime date, List<CartProduct> products});
}

/// @nodoc
class _$CreateCartRequestCopyWithImpl<$Res, $Val extends CreateCartRequest>
    implements $CreateCartRequestCopyWith<$Res> {
  _$CreateCartRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? date = null,
    Object? products = null,
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
              as List<CartProduct>,
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
  $Res call({int userId, DateTime date, List<CartProduct> products});
}

/// @nodoc
class __$$CreateCartRequestImplCopyWithImpl<$Res>
    extends _$CreateCartRequestCopyWithImpl<$Res, _$CreateCartRequestImpl>
    implements _$$CreateCartRequestImplCopyWith<$Res> {
  __$$CreateCartRequestImplCopyWithImpl(_$CreateCartRequestImpl _value,
      $Res Function(_$CreateCartRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? date = null,
    Object? products = null,
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
              as List<CartProduct>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateCartRequestImpl implements _CreateCartRequest {
  const _$CreateCartRequestImpl(
      {required this.userId,
      required this.date,
      required final List<CartProduct> products})
      : _products = products;

  factory _$CreateCartRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateCartRequestImplFromJson(json);

  @override
  final int userId;
  @override
  final DateTime date;
  final List<CartProduct> _products;
  @override
  List<CartProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'CreateCartRequest(userId: $userId, date: $date, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCartRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, date,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
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
      required final List<CartProduct> products}) = _$CreateCartRequestImpl;

  factory _CreateCartRequest.fromJson(Map<String, dynamic> json) =
      _$CreateCartRequestImpl.fromJson;

  @override
  int get userId;
  @override
  DateTime get date;
  @override
  List<CartProduct> get products;
  @override
  @JsonKey(ignore: true)
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, price, category, description, image);

  @JsonKey(ignore: true)
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
  @override
  @JsonKey(ignore: true)
  _$$ProductsRequestImplCopyWith<_$ProductsRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
