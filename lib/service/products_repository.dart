import 'package:flutter_online_shop/models/product.dart';
import 'package:flutter_online_shop/service/api.dart';

abstract interface class IProductsRepository {
  Future<List<Product>> getAll();
  Future<Product> getById(int id);
}

class ProductsRepository implements IProductsRepository {
  final Api _api;

  ProductsRepository(this._api);

  @override
  Future<List<Product>> getAll() async {
    return await _api.getAllProducts();
  }

  @override
  Future<Product> getById(int id) async {
    return _api.getProductsById(id);
  }
}
