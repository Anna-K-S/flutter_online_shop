import 'dart:async';
import 'dart:convert';

import 'package:flutter_online_shop/models/address.dart';
import 'package:flutter_online_shop/models/name.dart';
import 'package:flutter_online_shop/models/user.dart';
import 'package:flutter_online_shop/service/api.dart';
import 'package:flutter_online_shop/service/auth_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract interface class IUserRepository {
  Future<List<User>> getAll();
  Future<User> create(CreateUserRequest request);
  Future<void> update(User user);
  Future<void> deleteDetailInfo(User user);
  Future<User?> login(String email, String password);
  Future<User?> getUserFromToken(String token);
  Stream<User> get userUpdated;
  Future<void> createEmptyCartForUser(String token);
}

class UserRepository implements IUserRepository {
  final Api _api;
  final IAuthRepository _authRepository;
  final _userController = StreamController<User>.broadcast();

  UserRepository(this._api, this._authRepository);

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
  Future<List<User>> getAll() async {
    return await _api.getAllUsers();
  }

  @override
  Future<User> create(CreateUserRequest request) async {
    final token = '${request.userName}_${request.password}';

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
      value.setString('${user.userName}_${user.password}', jsonEncode(json));
    });

    await _authRepository.getToken();

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
  Future<void> deleteDetailInfo(User user) async {
    final storage = await SharedPreferences.getInstance();

    final token = await _authRepository.getToken();
    if (token != null) {
      await storage.remove(token);
    }
  }

  @override
  Future<User?> login(String username, String password) async {
    final token = '${username}_$password';
    final user = await SharedPreferences.getInstance().then((value) {
      final json = value.getString('${username}_$password');
      if (json != null) {
        return User.fromJson(jsonDecode(json));
      }
    });

    if (user != null) {
      await _authRepository.saveToken(token);
    }

    return user;
  }

  @override
  Future<void> createEmptyCartForUser(String token) async {
    final storage = await SharedPreferences.getInstance();
    final emptyCart = <String, dynamic>{'items': []};
    await storage.setString('cart_$token', jsonEncode(emptyCart));
  }
}
