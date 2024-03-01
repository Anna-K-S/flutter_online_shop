import 'package:flutter_online_shop/models/cart.dart';
import 'package:flutter_online_shop/models/user.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:flutter_online_shop/models/product.dart';

part 'api.g.dart';

@RestApi(baseUrl: "https://fakestoreapi.com")
abstract class Api {
  factory Api(Dio dio, {String baseUrl}) = _Api;

  @GET("/products")
  Future<List<Product>> getAllProducts();

  @GET("/products/{id}")
  Future<Product> getProductsById(@Path("id") int id);

  @POST("/products")
  Future<void> addProduct(@Body() Product product);

  @PUT("/products/{id}")
  Future<void> updateProduct(@Path("id") int id, @Body() Product product);

  @DELETE("/products/{id}")
  Future<void> deleteProduct(@Path("id") int id);

  @GET("/products/categories")
  Future<List<String>> getAllProductsCategories();

  @GET("/products?limit={limit}")
  Future<List<Product>> getProductsWithLimit(@Path("limit") int limit);

  @GET("/products?sortBy={sortBy}")
  Future<List<Product>> getSortedProducts(@Path("sortBy") String sortBy);

  @GET("/products/category/{category}")
  Future<List<Product>> getProductsInCategory(@Path("category") String category);
   @GET("/users")
  Future<List<User>> getAllUsers();

  @GET("/users/{id}")
  Future<User> getUsersById(@Path("id") int id);

  @GET("/users")
  Future<List<User>> getUsersWithLimit(@Query("limit") int limit);

  @GET("/users")
  Future<List<User>> getSortedUsers(@Query("sortBy") String sortBy);

  @POST("/users")
  Future<void> addUser(@Body() User user);

  @PUT("/users/{id}")
  Future<void> updateUser(@Path("id") int id, @Body() User user);

  @DELETE("/users/{id}")
  Future<void> deleteUser(@Path("id") int id);

  @POST("/auth/login")
  Future<User?> loginUser(
      @Field("email") String email, @Field("password") String password);

    @GET("/carts")
  Future<List<Cart>> getAllCarts();

  @GET("/carts/{cartId}")
  Future<Cart> getCartById(@Path("cartId") int cartId);

  @GET("/carts")
  Future<List<Cart>> getCartsWithLimit(@Query("limit") int limit);

  @GET("/carts")
  Future<List<Cart>> getSortedCarts(@Query("sortBy") String sortBy);

  @GET("/carts")
  Future<List<Cart>> getCartsInDateRange(
    @Query("startDate") DateTime startDate,
    @Query("endDate") DateTime endDate,
  );

  @GET("/carts/user/{userId}")
  Future<Cart> getUserCart(@Path("userId") int userId);

  @POST("/carts")
  Future<void> addCart(@Body() Cart cart);

  @PUT("/carts/{cartId}")
  Future<void> updateCart(
    @Path("cartId") int cartId,
    @Body() Cart cart,
  );

  @DELETE("/carts/{cartId}")
  Future<void> deleteCart(@Path("cartId") int cartId);    
}
