import 'package:freezed_annotation/freezed_annotation.dart';
part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    required String title,
    required num price,
    required String category,
    required String description,
    required String image,
  }) = ProductData;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

