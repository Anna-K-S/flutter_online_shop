import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_shop/cubit/products_cubit/products_state.dart';
import 'package:flutter_online_shop/service/products_repository.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final IProductsRepository _productsRepository;

  ProductsCubit(this._productsRepository)
      : super(const ProductsState.loading());

  Future<void> load() async {
    emit(
      const ProductsState.loading(),
    );
    try {
      final products = await _productsRepository.getAll();
      emit(ProductsState.idle(products));
    } catch (e) {
      emit(ProductsState.error("Failed to load products: $e"));
    }
  }

  Future<void> reload() async {
    emit(
      const ProductsState.loading(),
    );
    try {
      final products = await _productsRepository.getAll();
      emit(ProductsState.idle(products));
    } catch (e) {
      emit(ProductsState.error("Failed to reload products: $e"));
    }
  }
}
