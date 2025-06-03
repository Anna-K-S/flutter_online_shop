import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_shop/cubit/products_cubit/products_state.dart';
import 'package:flutter_online_shop/models/product.dart';
import 'package:flutter_online_shop/service/products_repository.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final IProductsRepository _productsRepository;

  ProductsCubit(this._productsRepository)
      : super(
          const ProductsIdle(
            products: [],
          ),
        );

  var _products = const <Product>[];

  Future<void> load() async {
    emit(
      ProductsLoading(products: state.productsOrNull!),
    );
    try {
      _products = await _productsRepository.getAll();
      if (_products.isEmpty || state.productsOrNull == null) {
        return emit(
          const ProductsIdle(
            products: [],
          ),
        );
      }

      emit(
        ProductsSuccess(products: _products),
      );
    } catch (e) {
      emit(
        ProductsError(
          error: e,
          products: state.products,
        ),
      );
    }
  }

  Future<void> reload() async {
    emit(ProductsLoading(products: state.productsOrNull!));

    try {
      final products = _products = await _productsRepository.getAll();

      emit(
        ProductsSuccess(products: products),
      );
    } catch (e) {
      emit(
        ProductsState.error(
          error: e,
          products: state.products,
        ),
      );
    }
  }

  Future<void> getById(int id) async {
    emit(ProductsLoading(products: state.productsOrNull!));
    try {
      final products = await _productsRepository.getById(id);
      emit(
        ProductsSuccess(
          products: _products = [products],
        ),
      );
    } catch (e) {
      emit(
        ProductsError(
          error: e,
          products: state.products,
        ),
      );
    }
  }

  void searchProducts(String query) {
    final state = this.state;

    if (state is! ProductsSuccess) return;

    final allProducts = _products;
    final filteredProducts = allProducts
        .where(
          (product) => product.title.toLowerCase().contains(
                query.toLowerCase(),
              ),
        )
        .toList();
    emit(
      ProductsSuccess(products: filteredProducts),
    );
  }
}
