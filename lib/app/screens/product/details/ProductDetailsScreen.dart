import 'package:flutter/material.dart';
import 'package:flutter_app/app/screens/product/details/cubit/ProductDetailsCubit.dart';
import 'package:flutter_app/app/utils/ProductDetailsArguments.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key key}) : super(key: key);
  static const String route = 'ProductDetailsScreen';

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(title: Text("Details")),
      body: Center(
        child: BlocProvider(
          create: (context) => ProductDetailsCubit()..getProduct(arguments.id),
          child: BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
            builder: (context, state) => Center(
              child: state.product != null
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(state.product.id.toString()),
                        Text(state.product.label),
                        Text(state.product.price),
                      ],
                    )
                  : CircularProgressIndicator(),
            ),
          ),
        ),
      ),
    );
  }
}
