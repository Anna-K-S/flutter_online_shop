import 'package:dio/dio.dart';
import 'package:flutter_online_shop/models/product.dart';

const _basePath = 'https://fakestoreapi.com';

class Api {
  final Dio _dio;

  Api(this._dio);

  Future<List<Product>> getAll() async {
    final response = await _dio.get('$_basePath/products');
    return (response.data as List)
        .map((json) => Product.fromJson(json))
        .toList();
  }

  Future<Product> getById(int id) async {
    final response = await _dio.get('$_basePath/products/$id');
    return Product.fromJson(response.data);
  }

  Future<void> add(Product product) async {
    await _dio.post(
      '$_basePath/products',
      data: product.toJson(),
    );
  }

  Future<void> update(int id, Product product) async {
    await _dio.put(
      '$_basePath/products/$id',
      data: product.toJson(),
    );
  }

  Future<void> delete(int id) async {
    await _dio.delete('$_basePath/products/$id');
  }

  Future<List<String>> getAllCategories() async {
    final response = await _dio.get('$_basePath/products/categories');
    return List<String>.from(response.data);
  }

  Future<List<Product>> getWithLimit(int limit) async {
    final response = await _dio.get('$_basePath/products?limit=$limit');
    return (response.data as List)
        .map((json) => Product.fromJson(json))
        .toList();
  }

  Future<List<Product>> getSorted(String sortBy) async {
    final response = await _dio.get('$_basePath/products?sortBy=$sortBy');
    return (response.data as List)
        .map((json) => Product.fromJson(json))
        .toList();
  }

  Future<List<Product>> getInCategory(String category) async {
    final response =
        await _dio.get('$_basePath/products/category/$category');
    return (response.data as List)
        .map((json) => Product.fromJson(json))
        .toList();
  }
}
