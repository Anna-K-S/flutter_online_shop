import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract interface class IAuthRepository {
  Future<void> saveToken(String token);
  Future<String?> getToken();
  Future<void> deleteToken();
}

class AuthRepository implements IAuthRepository {
  final FlutterSecureStorage _storage;

  static const String _tokenKey = 'auth_token';

  AuthRepository(this._storage);

  @override
  Future<void> saveToken(String token) async {
    await _storage.write(key: _tokenKey, value: token);
  }

  @override
  Future<String?> getToken() async {
    return _storage.read(key: _tokenKey);
  }

  @override
  Future<void> deleteToken() async {
    await _storage.delete(key: _tokenKey);
  }
}
