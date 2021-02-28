import 'package:flutter/material.dart';
import "package:izaan_eshop/screens/home/home.dart";
import "package:izaan_eshop/screens/welcome/welcome.dart";
import "package:izaan_eshop/screens/login/login.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Izaan Eshop",
      routes: {
        "/": (context) => Welcome(),
        "/home": (context) => Home(),
        "/login": (context) => Login()
      },
    );
  }
}
