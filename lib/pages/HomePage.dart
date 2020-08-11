import 'package:flutter/material.dart';

import '../ProductsManager.dart';

class HomePage extends StatelessWidget {
  final ProductsManager productsManager = ProductsManager();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Image.asset("assets/images/ninja.png"),
              FlatButton(
                child: Text("Manage Products"),
                onPressed: () {},
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Practice"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(child: Text("All Products")),
              Tab(child: Text("Manage Products")),
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[productsManager,productsManager],)
      ),
      length: 2,
    );
  }
}
