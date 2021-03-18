part of 'ProductDetailsCubit.dart';

abstract class ProductDetailsState {
  ProductEntity product;
}

class ProductDetailsInitial extends ProductDetailsState {
}

class ProductDetailsValue extends ProductDetailsState {
  ProductDetailsValue(product) {
    this.product = product;
  }
}
