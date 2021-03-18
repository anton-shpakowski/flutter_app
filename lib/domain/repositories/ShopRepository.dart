import 'package:flutter_app/domain/entities/ProductEntity.dart';

abstract class ShopRepository {
  Future<List<ProductEntity>> getProductsList();

  Future<ProductEntity> getProduct(int id);

  Future<int> addProduct(String label, String price);
}
