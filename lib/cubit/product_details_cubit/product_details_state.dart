import 'package:flutter_online_shop/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_details_state.freezed.dart';

@freezed
class ProductDetailsState with _$ProductDetailsState {
  const factory ProductDetailsState.initial() = ProductDetailsInitial;
  const factory ProductDetailsState.loading() = ProductDetailsLoading;
  const factory ProductDetailsState.success({
    required Product product,
  }) = ProductDetailsSuccess;
  const factory ProductDetailsState.error({
    required Object error,
  }) = ProductDetailsError;
}
