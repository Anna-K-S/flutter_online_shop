import 'package:dio/dio.dart';
import 'package:flutter_online_shop/models/cart.dart';
import 'package:flutter_online_shop/models/cart_product.dart';
import 'package:flutter_online_shop/models/product.dart';
import 'package:flutter_online_shop/models/user.dart';

import 'package:flutter_online_shop/service/debug_inspector.dart';

const _basePath = 'https://fakestoreapi.com';

class Api {
  final Dio _dio;

  Api(this._dio);

  ///получение списка всех товаров
  Future<List<Product>> getAllProducts() async {
    final response = await _dio.get('/products');

    final List<dynamic> json = response.data;
    final List<Product> result =
        json.map((json) => Product.fromJson(json)).toList();
    return result;
  }

  /// получение инф-ии о товаре по его id
  Future<Product> getDetailsProduct(int id) async {
    final response = await _dio.get('/products/$id');

    final json = response.data as Map<String, dynamic>;
    final result = Product.fromJson(json);
    return result;
  }

  /// получение списка всех пользователей

  Future<List<User>> getAllUsers() async {
    final response = await _dio.get('/users');

    final List<dynamic> json = response.data;
    final List<User> result = json.map((json) => User.fromJson(json)).toList();
    return result;
  }

  ///получение списка товаров в корзине юзера по его id

  Future<Cart> getUserCart(int userId) async {
    final response = await _dio.get('/carts/$userId');

    final json = response.data as Map<String, dynamic>;
    final productsJson = json['products'] as List<dynamic>;
    final List<CartProduct> cartProducts = productsJson
        .map((productJson) => CartProduct.fromJson(productJson))
        .toList();

    final result = Cart.fromJson(json, cartProducts);
    return result;
  }
}
