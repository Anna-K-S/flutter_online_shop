import 'package:freezed_annotation/freezed_annotation.dart';

part 'name.freezed.dart';

part 'name.g.dart';

@freezed
class Name with _$Name {
  const factory Name({
    required String firstName,
    required String finalName,
  }) = _Name;

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
}

