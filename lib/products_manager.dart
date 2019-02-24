import 'package:flutter/material.dart';

import './products.dart';

class ProductsManger extends StatefulWidget {
  final String startingProduct;
  ProductsManger({this.startingProduct = 'Sweet tester'});
  @override
  State<StatefulWidget> createState() {
    return _ProDuctManagerState();
  }
}

class _ProDuctManagerState extends State<ProductsManger> {
  List<String> _products = [];
  @override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(5.0),
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              setState(() {
                _products.add('Advanced Food test');
              });
            },
            child: Text('Add Item'),
          ),
        ),
        Products(products: _products),
      ],
    );
  }
}
