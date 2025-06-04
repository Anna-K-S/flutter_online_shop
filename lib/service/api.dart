import 'package:flutter_online_shop/models/cart.dart';
import 'package:flutter_online_shop/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:flutter_online_shop/models/product.dart';

part 'api.g.dart';
part 'api.freezed.dart';

@RestApi(baseUrl: "https://fakestoreapi.com")
abstract class Api {
  factory Api(Dio dio, {String baseUrl}) = _Api;

  @GET("/products")
  Future<List<Product>> getAllProducts();

  @GET("/products/{id}")
  Future<Product> getProductsById(@Path("id") int id);

  @GET("/users")
  Future<List<User>> getAllUsers();

  @POST("/users")
  Future<User> addUser(@Body() CreateUserRequest request);

  @PUT("/users/{id}")
  Future<void> updateUser(@Path("id") int id, @Body() User user);

  @DELETE("/users/{id}")
  Future<void> deleteUser(@Path("id") int id);

  @POST("/auth/login")
  Future<User> loginUser(
      @Field("username") String username, @Field("password") String password);

  @PUT("/carts/{cartId}")
  Future<void> updateCart(
    @Path("cartId") int userId,
    @Body() Cart cart,
  );

  @GET("/user/me")
  Future<User> getUserByToken(@Header("Authorization") String token);
}

@freezed
class CreateCartRequest with _$CreateCartRequest {
  const factory CreateCartRequest({
    required int userId,
    required DateTime date,
    required List<Product> products,
    required String token,
  }) = _CreateCartRequest;

  factory CreateCartRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateCartRequestFromJson(json);
}

@freezed
class ProductsRequest with _$ProductsRequest {
  const factory ProductsRequest({
    required int id,
    required String title,
    required num price,
    required String category,
    required String description,
    required String image,
  }) = _ProductsRequest;

  factory ProductsRequest.fromJson(Map<String, dynamic> json) =>
      _$ProductsRequestFromJson(json);
}

@freezed
class CreateUserRequest with _$CreateUserRequest {
  const factory CreateUserRequest({
    required String userName,
    required String email,
    required String password,
    required String token,
  }) = _User;

  factory CreateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateUserRequestFromJson(json);
}
