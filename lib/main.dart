import 'package:flutter/material.dart';
import "package:izaan_eshop/screens/home/home.dart";
import "package:izaan_eshop/screens/welcome/welcome.dart";
import "package:izaan_eshop/screens/login/login.dart";
import "package:izaan_eshop/screens/items/items.dart";
import "package:izaan_eshop/screens/item_details/item_details.dart";
import "package:izaan_eshop/screens/cart/cart.dart";

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
        "/login": (context) => Login(),
        "/items": (context) => Items(),
        "/item-details": (context) => ItemDetails(),
        "/cart": (context) => Cart()
      },
    );
  }
}
