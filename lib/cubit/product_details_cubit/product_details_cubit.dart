import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_shop/cubit/product_details_cubit/product_details_state.dart';
import 'package:flutter_online_shop/service/products_repository.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  final IProductsRepository _productsRepository;

  ProductDetailsCubit(this._productsRepository)
      : super(
          const ProductDetailsInitial(),
        );

  Future<void> load(int id) async {
    emit(const ProductDetailsLoading());
    try {
      final product = await _productsRepository.getById(id);
      emit(
        ProductDetailsSuccess(product: product),
      );
    } catch (e) {
      emit(
        ProductDetailsError(error: e),
      );
    }
  }
}
