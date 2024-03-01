import 'package:flutter_online_shop/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_state.freezed.dart';

@freezed
sealed class ProductsState with _$ProductsState {
  const factory ProductsState.loading() = _Loading;
  const factory ProductsState.idle(List<Product> products) = _Loaded;
  const factory ProductsState.error(String errorMessage) = _Error;
}
