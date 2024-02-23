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
}
