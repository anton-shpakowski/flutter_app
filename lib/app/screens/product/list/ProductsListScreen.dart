import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/screens/product/details/ProductDetailsScreen.dart';
import 'package:flutter_app/app/screens/product/list/cubit/ProductsListCubit.dart';
import 'package:flutter_app/app/utils/ProductDetailsArguments.dart';
import 'package:flutter_app/app/widgets/ProductsListItem.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsListScreen extends StatelessWidget {
  ProductsListScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Products")),
      body: Center(
        child: BlocProvider(
          create: (context) => ProductsListCubit()..getProductsList(),
          child: BlocBuilder<ProductsListCubit, ProductsListState>(
            builder: (context, state) => ListView.builder(
              itemCount: state.value.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                      child: ProductsListItem(state.value[index].id, state.value[index].label, state.value[index].price),
                      onTap: () => {
                            Navigator.pushNamed(context, ProductDetailsScreen.route, arguments: ProductDetailsArguments(state.value[index].id))
                          }),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
