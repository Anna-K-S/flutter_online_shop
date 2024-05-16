
import 'package:flutter_online_shop/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_state.freezed.dart';

@freezed
sealed class ProductsState with _$ProductsState {
  const ProductsState._();

  bool get isSuccess => this is ProductsSuccess;

  bool get isLoading => this is ProductsLoading;

  bool get isError => this is ProductsError;

  bool get isIdle => this is ProductsIdle;

  const factory ProductsState.idle({
    required List<Product> products,
  }) = ProductsIdle;

  const factory ProductsState.success({
    required List<Product> products,
  }) = ProductsSuccess;

  const factory ProductsState.loading({
    required List<Product> products,
  }) = ProductsLoading;

  const factory ProductsState.error({
    required Object error,
    List<Product>? products,
  }) = ProductsError;


List<Product>? get productsOrNull => map(
  idle: (state) => state.products,
  loading: (state) => state.products,
  success: (state) => state.products,
  error: (state) => state.products,
);
  // List<Product>? get productsOrNull => switch (this) {
  //       ProductsIdle() => null,
  //       ProductsLoading(:final products) => products,
  //       ProductsSuccess(:final products) => products,
  //       ProductsError(:final products) => products,
  //     };
  // //     };
  // const factory ProductsState.idle() = ProductsIdle;
  // const factory ProductsState.loading(List<Product> products) = ProductsLoading;
  // const factory ProductsState.success(List<Product> products, ) = ProductsSuccess;
  // const factory ProductsState.error({
  //   Object? error,
  //   List<Product>? products,
  // }) = ProductsError;
}
