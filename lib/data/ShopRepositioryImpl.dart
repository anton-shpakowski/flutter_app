import 'package:flutter_app/domain/entities/ProductEntity.dart';
import 'package:flutter_app/domain/repositories/ShopRepository.dart';

class ShopRepositoryImpl extends ShopRepository {
  List<ProductEntity> _products = [
    ProductEntity(0, "Product 1", "\$30.1"),
    ProductEntity(1, "Product 2", "\$43.62"),
    ProductEntity(2, "Product 3", "2101.1 руб"),
  ];

  @override
  Future<ProductEntity> getProduct(int id) {
    ProductEntity productEntity;
    var filtered = _products.where((element) => element.id == id);
    if (filtered.isNotEmpty) productEntity = filtered.first;
    return Future.delayed(Duration(seconds: 1), () => productEntity);
  }

  @override
  Future<List<ProductEntity>> getProductsList() {
    return Future.delayed(Duration(seconds: 1), () => _products);
  }

  @override
  Future<int> addProduct(String label, String price) {
    ProductEntity product = ProductEntity(_products.length, label, price);
    _products.add(product);
    return Future.delayed(Duration(seconds: 1), () => product.id);
  }
}
