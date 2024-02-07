import 'package:dio/dio.dart';
import 'package:flutter_online_shop/data/cart.dart';
import 'package:flutter_online_shop/data/product.dart';
import 'package:flutter_online_shop/data/user.dart';
import 'package:flutter_online_shop/service/custom_inspectors.dart';

const _basePath = 'https://fakestoreapi.com';

class Api {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: _basePath,
    ),
  );

  Api() {
    _dio.interceptors.add(
      CustomInterceptors(),
    );
  }

  //получение списка всех товаров
  Future<List<Product>> getAllProducts() async {
    final response = await _dio.get('/products');

    final List<dynamic> json = response.data;
    final List<Product> result =
        json.map((json) => Product.fromJson(json)).toList();
    return result;
  }

  // получение инф-ии о товаре по его id
  Future<Product> getDetailsProduct(int id) async {
    final response = await _dio.get('/products/$id');

    final json = response.data as Map<String, dynamic>;
    final result = Product.fromJson(json);
    return result;
  }

  // получение списка всех пользователей

  Future<List<User>> getAllUsers() async {
    final response = await _dio.get('/users');

    final List<dynamic> json = response.data;
    final List<User> result = json.map((json) => User.fromJson(json)).toList();
    return result;
  }

  //получение списка товаров в корзине юзера по его id

  Future<Cart> getUserCart(int userId) async {
    final response = await _dio.get('/carts/$userId');

    final json = response.data as Map<String, dynamic>;
    final result = Cart.fromJson(json);
    return result;
  }
}
