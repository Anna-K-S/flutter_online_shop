import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_shop/cubit/products_cubit/products_state.dart';
import 'package:flutter_online_shop/models/product.dart';
import 'package:flutter_online_shop/service/products_repository.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final IProductsRepository _productsRepository;
 

  ProductsCubit(this._productsRepository)
         : super(
         const ProductsIdle(
          products: []
         ),
        );


  Future<void> load() async {
   

    emit(
      ProductsLoading(products: state.productsOrNull!),
      
    );
    try {
      final products = await _productsRepository.getAll();
      if (products.isEmpty || state.productsOrNull == null) {
        return emit(const ProductsIdle(products: []));
      }

      emit(
        ProductsSuccess(products: products),
        

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
    emit(
      ProductsLoading(products:  state.productsOrNull!));
    
    try {
      final products = await _productsRepository.getAll();
      
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

  // Future<void> reload() async {
  //   final products = state.productsOrNull;

  //   if (products == null) return;
  //   emit(ProductsLoading(products: products));
  //   try {
  //     final products = await _productsRepository.getAll();
  //     emit(
  //       ProductsIdle(products: products),
  //     );
  //   } catch (e) {
  //     emit(
  //       ProductsError(
  //         error: e,
  //         products: state.productsOrNull,
  //       ),
  //     );
  //   }
  // }

  // Future<void> addProduct(Product product) async {
  //   emit(ProductsLoading(products: state.productsOrNull ?? []));
  //   try {
  //     await _productsRepository.add(product);
  //     emit(ProductsLoading(products: state.productsOrNull ?? []));
  //     await reload();
  //   } catch (e) {
  //     emit(
  //       ProductsError(
  //         error: e,
  //         products: state.productsOrNull,
  //       ),
  //     );
  //   }
  // }
}
