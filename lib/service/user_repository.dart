import 'package:flutter_online_shop/models/user.dart';
import 'package:flutter_online_shop/service/api.dart';

abstract interface class IUserRepository {
  Future<List<User>> getAll();
  Future<User> getById(int userId);
  Future<List<User>> getWithLimit(int limit);
  Future<List<User>> getSorted(String sortBy);
  Future<void> add(User user);
  Future<void> update(int id, User user);
  Future<void> delete(int userId);
  Future<User?> login(String email, String password);
}

class UserRepository implements IUserRepository{
  final Api _api;

  UserRepository(this._api);

  @override
  Future<List<User>> getAll() async{
    return await _api.getAllUsers();
  }
  @override
  Future<User> getById(int id) async{
    return await _api.getUsersById(id);
  }

  @override
  Future<List<User>> getWithLimit(int limit) async{
    return await _api.getUsersWithLimit(limit);
  }
  @override
  Future<List<User>> getSorted(String sortBy) async{
    return await _api.getSortedUsers(sortBy);
  }
  @override
  Future<void> add(User user) async{
    await _api.addUser(user);
  }
  @override
  Future<void> update(int id, User user) async{
    await _api.updateUser(id,user);
  }
  @override
  Future<void> delete(int id) async{
    await _api.deleteUser(id);
  }
  @override
  Future<User?> login(String email, String password) async {
    return await _api.loginUser(email, password);
  }
}