import 'package:flutter/material.dart';

import '../ProductsManager.dart';

class HomePage extends StatelessWidget {

  final ProductsManager productsManager = ProductsManager();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: productsManager,
          )
        ],
      ),
    );
  }
}
