import 'package:flutter_app/domain/entities/ProductEntity.dart';
import 'package:flutter_app/domain/repositories/ShopRepository.dart';
import 'package:flutter_app/domain/usecase/ShopUseCase.dart';

class ShopRepositoryInteractor extends ShopUseCase {
  ShopRepository _repository;

  ShopRepositoryInteractor(this._repository);

  @override
  Future<int> addProduct(String label, String price) {
    return _repository.addProduct(label, price);
  }

  @override
  Future<ProductEntity> getProduct(int id) {
    return _repository.getProduct(id);
  }

  @override
  Future<List<ProductEntity>> getProductsList() {
    return _repository.getProductsList();
  }
}
