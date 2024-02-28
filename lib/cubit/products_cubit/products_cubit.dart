import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_shop/cubit/products_cubit/products_state.dart';
import 'package:flutter_online_shop/service/products_repository.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final IProductsRepository _productsRepository;

  ProductsCubit(this._productsRepository)
      : super(const ProductsState.initial());

  Future<void> load() async {
    emit(
      const ProductsState.initial(),
    );
    try {
      final products = await _productsRepository.getAll();
      emit(ProductsState.idle(products));
    } catch (e) {
      emit(
        ProductsState.error(
          error: e,
          products: state.productsOrNull,
        ),
      );
    }
  }

  Future<void> reload() async {
    final products = state.productsOrNull;

    if (products == null) return;
    emit(ProductsState.loading(products));
    try {
      final products = await _productsRepository.getAll();
      emit(
        ProductsState.idle(products),
      );
    } catch (e) {
      emit(
        ProductsState.error(
          error: e,
          products: state.productsOrNull,
        ),
      );
    }
  }
}
