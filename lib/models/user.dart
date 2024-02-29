import 'package:flutter_online_shop/models/address.dart';
import 'package:flutter_online_shop/models/name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'user.freezed.dart';
part 'user.g.dart'; 


@freezed
class User with _$User {
  const factory User({
    required int id,
    required String email,
    required String userName,
    required String password,
    required Name name,
    required Address address,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}