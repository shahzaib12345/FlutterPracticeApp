import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterapp/pages/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      title: "Flutter Practice",
      home: HomePage(),
    );
  }
}
