import 'package:bloc/bloc.dart';
import 'package:flutter_app/data/ShopRepositioryImpl.dart';
import 'package:flutter_app/domain/entities/ProductEntity.dart';
import 'package:flutter_app/domain/interactors/ShopRepositoryInteractor.dart';
import 'package:flutter_app/domain/usecase/ShopUseCase.dart';
import 'package:meta/meta.dart';

part 'ProductsListState.dart';

class ProductsListCubit extends Cubit<ProductsListState> {
  ProductsListCubit() : super(ProductsListStateInitial());

  ShopUseCase shopUseCase = ShopRepositoryInteractor(ShopRepositoryImpl());

  getProductsList() {
    shopUseCase.getProductsList().then((value) => emit(ProductsListStateValue(value)));
  }

}
