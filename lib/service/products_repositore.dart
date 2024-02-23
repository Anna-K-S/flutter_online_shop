import 'package:flutter_online_shop/models/product.dart';
import 'package:flutter_online_shop/service/api.dart';

abstract interface class IProductsRepository {
  Future<List<Product>> getAll();
  Future<Product> getById(int id);
  Future<List<Product>> getWithLimit(int limit);
  Future<List<Product>> getSorted(String sortBy);
  Future<List<String>> getAllCategories();
  Future<List<Product>> getInCategory(String category);
  Future<void> add(Product product);
  Future<void> update(int id, Product product);
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
    await _api.addProduct(product);
  }

  @override
  Future<void> update(int id, Product product) async {
    await _api.updateProduct(id, product);
  }

  @override
  Future<void> delete(int id) async {
    await _api.deleteProduct(id);
  }

  @override
  Future<List<String>> getAllCategories() async {
    return await _api.getAllProductsCategories();
  }

  @override
  Future<List<Product>> getInCategory(String category) async {
    return await _api.getProductsInCategory(category);
  }

  @override
  Future<List<Product>> getSorted(String sortBy) async {
    return await _api.getSortedProducts(sortBy);
  }

  @override
  Future<List<Product>> getWithLimit(int limit) async {
    return await _api.getProductsWithLimit(limit);
  }
}
