import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/ProductController.dart';
import 'package:flutterapp/ProductModel.dart';
import 'package:flutterapp/ProductsBuilder.dart';
import 'package:flutterapp/SearchController.dart';

class ProductsManager extends StatefulWidget {
  final String _tag = "Products Manager";

  static _ProductsState of(BuildContext context) =>
      context.findAncestorStateOfType();

  @override
  _ProductsState createState() {
    print(_tag + " ProductState Create Called");
    return _ProductsState();
  }
}

class _ProductsState extends State<ProductsManager> {
  List<ProductModel> products;
  List<ProductModel> filteredList;
  Widget searchController;
  int count = 0;

  @override
  void initState() {
    filteredList = new List();
    filteredList.add(new ProductModel.name("Initial Product", "Static Image"));
    products = new List();
    products.addAll(filteredList);
    searchController = SearchController(updateReceivedInput);
    super.initState();
    print(widget._tag + " initState Called");
  }

  void updateReceivedInput(String input) {
    setState(() {
      if (input.isEmpty) {
        filteredList.clear();
        filteredList.addAll(products);
      } else {
        filteredList.clear();
        for (int i = 0; i < products.length; i++) {
          if (products.elementAt(i).title.toLowerCase().contains(new RegExp(input.toString().toLowerCase()))) {
            filteredList.add(products.elementAt(i));
          }
        }
      }
    });
    print(input);
  }

  void addProduct() {
    setState(() {
      count += 1;
      filteredList
          .add(new ProductModel.name("New Product $count", "Static Image"));
      products.add(new ProductModel.name("New Product $count", "Static Image"));
    });
  }

  @override
  Widget build(BuildContext context) {
    print(widget._tag + " build Called");
    return Column(
      children: <Widget>[
        /*Image.asset("assets/images/tlsappicon.png"),
                    Center(child: _TextViewIncremental(counter: counter)),*/
        searchController,
        Expanded(
          child: ProductsBuilder(filteredList),
        ),
        ProductController(addProduct)
      ],
    );
  }

  @override
  void setState(fn) {
    super.setState(fn);
  }
}
