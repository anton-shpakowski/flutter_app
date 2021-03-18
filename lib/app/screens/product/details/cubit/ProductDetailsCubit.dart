import 'package:bloc/bloc.dart';
import 'package:flutter_app/data/ShopRepositioryImpl.dart';
import 'package:flutter_app/domain/entities/ProductEntity.dart';
import 'package:flutter_app/domain/interactors/ShopRepositoryInteractor.dart';
import 'package:flutter_app/domain/usecase/ShopUseCase.dart';

part 'ProductDetailsState.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  ProductDetailsCubit() : super(ProductDetailsInitial());

  ShopUseCase shopUseCase = ShopRepositoryInteractor(ShopRepositoryImpl());

  getProduct(id) {
    shopUseCase.getProduct(id).then((value) => emit(ProductDetailsValue(value)));
  }
}
