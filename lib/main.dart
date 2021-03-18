import 'package:flutter/material.dart';
import 'package:flutter_app/app/screens/product/details/ProductDetailsScreen.dart';
import 'package:flutter_app/app/screens/product/list/ProductsListScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        ProductDetailsScreen.route: (context) => ProductDetailsScreen()
      },
      home: ProductsListScreen(),
    );
  }
}
