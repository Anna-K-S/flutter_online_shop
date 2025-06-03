import 'package:flutter_online_shop/models/product.dart';
import 'package:flutter_online_shop/service/api.dart';

abstract interface class IProductsRepository {
  Future<List<Product>> getAll();
  Future<Product> getById(int id);
  Future<void> add(Product product);
  Future<void> update(Product product);
  Future<void> delete(int id);
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

  @override
  Future<void> add(Product product) async {
    await _api.addProduct(product as ProductsRequest);
  }

  @override
  Future<void> update(Product product) async {
    await _api.updateProduct(product.id, product);
  }

  @override
  Future<void> delete(int id) async {
    await _api.deleteProduct(id);
  }
}
