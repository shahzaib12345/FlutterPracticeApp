import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        Navigator.pop(context,false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Details"),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "This will be product title",
                style: TextStyle(
                    fontSize: 32,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Image.asset("assets/images/ninja.png"),
          ],
        ),
      ),
    );
  }
}
