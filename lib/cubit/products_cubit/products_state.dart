import 'package:flutter_online_shop/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_state.freezed.dart';

@freezed
sealed class ProductsState with _$ProductsState {
  const ProductsState._();

  List<Product>? get productsOrNull => switch (this) {
        ProductsInitial() => null,
        ProductsLoading(:final products) => products,
        ProductsLoaded(:final products) => products,
        ProductsError(:final products) => products,
      };
  const factory ProductsState.initial() = ProductsInitial;
  const factory ProductsState.loading(List<Product> products) = ProductsLoading;
  const factory ProductsState.idle(List<Product> products) = ProductsLoaded;
  const factory ProductsState.error({
    Object? error,
    List<Product>? products,
  }) = ProductsError;
}
