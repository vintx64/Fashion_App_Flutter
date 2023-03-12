import 'package:fashion_app/screens/HomeScreen.dart';
import 'package:fashion_app/screens/updateProuductScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

void main(List<String> args) {
  runApp(const FashionApp());
}

class FashionApp extends StatelessWidget {
  const FashionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      HomeScreen.id: (context) => HomeScreen(),
      UpdateProductScreen.id: (context) => UpdateProductScreen(),
    }, initialRoute: HomeScreen.id);
  }
}
