part of 'ProductsListCubit.dart';

@immutable
abstract class ProductsListState {
  List<ProductEntity> value;
}

class ProductsListStateInitial extends ProductsListState {
  ProductsListStateInitial() {
    this.value = [];
  }
}

class ProductsListStateValue extends ProductsListState {
  ProductsListStateValue(List<ProductEntity> value) {
    this.value = value;
  }
}
