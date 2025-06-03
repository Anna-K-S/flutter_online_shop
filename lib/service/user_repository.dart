import 'dart:async';
import 'dart:convert';

import 'package:flutter_online_shop/models/address.dart';
import 'package:flutter_online_shop/models/name.dart';
import 'package:flutter_online_shop/models/user.dart';
import 'package:flutter_online_shop/service/api.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract interface class IUserRepository {
  Future<List<User>> getAll();
  Future<User> create(CreateUserRequest request);
  Future<void> update(User user);
  Future<void> delete(User user);
  Future<User?> login(String email, String password);
  Future<void> saveToken(String token);
  Future<String?> getToken();
  Future<void> deleteToken();
  Future<User?> getUserFromToken(String token);
  Stream<User> get userUpdated;
}

class UserRepository implements IUserRepository {
  final Api _api;
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();
  static const String _tokenKey = 'token';
  final _userController = StreamController<User>.broadcast();

  UserRepository(this._api);

  @override
  Stream<User> get userUpdated => _userController.stream;

  @override
  Future<User?> getUserFromToken(String token) async {
    final storage = await SharedPreferences.getInstance();

    final json = storage.getString(token);

    if (json == null) return null;

    return User.fromJson(jsonDecode(json));
  }

  @override
  Future<void> saveToken(String token) async {
    await _secureStorage.write(key: _tokenKey, value: token);
  }

  @override
  Future<String?> getToken() async {
    return await _secureStorage.read(key: _tokenKey);
  }

  @override
  Future<void> deleteToken() async {
    await _secureStorage.delete(key: _tokenKey);
  }

  @override
  Future<List<User>> getAll() async {
    return await _api.getAllUsers();
  }

  @override
  Future<User> create(CreateUserRequest request) async {
    final token = '${request.email}_${request.password}';

    final user = User(
      id: 1,
      email: request.email,
      userName: request.userName,
      password: request.password,
      name: const Name(firstName: '', finalName: ''),
      address: const Address(city: '', street: '', number: '', zipcode: ''),
      token: token,
    );

    final json = user.toJson();

    await SharedPreferences.getInstance().then((value) {
      value.setString('${user.email}_${user.password}', jsonEncode(json));
    });

    await saveToken(token);

    return user;
  }

  @override
  Future<void> update(User user) async {
    final storage = await SharedPreferences.getInstance();

    final json = user.toJson();

    storage.setString(user.token, jsonEncode(json));

    _userController.sink.add(user);
  }

  @override
  Future<void> delete(User user) async {
    final storage = await SharedPreferences.getInstance();

    final token = await getToken();
    if (token != null) {
      await storage.remove(token);
    }
  }

  @override
  Future<User?> login(String email, String password) async {
    final token = '${email}_$password';
    final user = await SharedPreferences.getInstance().then((value) {
      final json = value.getString('${email}_$password');
      if (json != null) {
        return User.fromJson(jsonDecode(json));
      }
    });

    if (user != null) {
      await saveToken(token);
    }

    return user;
  }
}
