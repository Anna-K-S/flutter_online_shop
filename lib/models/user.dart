import 'package:flutter_online_shop/models/address.dart';
import 'package:flutter_online_shop/models/name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'user.freezed.dart';
part 'user.g.dart'; 
// class User {

//   final int id;
//   final String email;
//   final String userName;
//   final String password;
//   final Name name;
//   final List<Address> address;

//   User({
//     required this.id,
//     required this.email,
//     required this.userName,
//     required this.password,
//     required this.name,
//     required this.address,
//   });

//   factory User.fromJson(Map<String, dynamic> json) {
//     final nameJson = json['name'] as Map<String, dynamic>;
//     final addressJson = json['address'] as Map<String, dynamic>;

//     return User(
//       id: json['id'] as int,
//       email: json['email'] as String,
//       userName: json['username'] as String,
//       password: json['password'] as String,
//       name: Name(
//         firstName: nameJson['firstName'] as String,
//         finalName: nameJson['finalName'] as String,
//       ),
//       address: [Address.fromJson(addressJson)].toList(),
//     );
//   }
// }


@freezed
class User with _$User {
  const factory User({
    required int id,
    required String email,
    required String userName,
    required String password,
    required Name name,
    required List<Address> address,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}