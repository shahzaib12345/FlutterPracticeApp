import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutterapp/ProductModel.dart';
import 'package:flutterapp/pages/ProductDetialsPage.dart';

class ProductsBuilder extends StatelessWidget {
  final List<ProductModel> products;

  ProductsBuilder(this.products);

  @override
  Widget build(BuildContext context) {
    Widget displayWidget;
    if (products.isNotEmpty) {
      displayWidget = ListView.builder(
        itemBuilder: (BuildContext ctxt, int index) {
          return _productItemBuilder(products.elementAt(index),context);
        },
        itemCount: products.length,
        shrinkWrap: true,
      );
    } else {
      displayWidget = Center(
        child: Text("No Results Found"),
      );
    }
    return displayWidget;
  }

  Widget _productItemBuilder(ProductModel productModel,BuildContext context) {
    return Card(
      elevation: 5,
      borderOnForeground: true,
      color: Colors.amberAccent,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              productModel.title,
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Image.asset("assets/images/ninja.png"),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: Text("View Details"),
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            ProductDetailsPage()),
                  );
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
