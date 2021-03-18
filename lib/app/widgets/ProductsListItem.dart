import 'package:flutter/cupertino.dart';

class ProductsListItem extends StatelessWidget {
  int _index;
  String _label;
  String _price;

  ProductsListItem(this._index, this._label, this._price);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(_label),
          Text(_price)
        ],
      ),
    );
  }
}
