import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductController extends StatelessWidget {

  final Function addProduct;

  ProductController(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        onPressed: () {
          addProduct();
        },
        child: Text("Click Me"),
        color: Colors.blueAccent,
      ),
    );
  }
}
