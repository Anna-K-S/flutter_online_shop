import 'package:flutter_online_shop/models/user.dart';

abstract interface class IUserRepository {
  Future<List<User>> getAll();
  Future<User> getUserById(int userId);
  Future<List<User>> getUsersWithLimit(int limit);
  Future<List<User>> getSorted(String sortBy);
  Future<void> add(User user);
  Future<void> update(int id, User user);
  Future<void> delete(int userId);
  Future<User?> login(String email, String password);
}
