import 'package:flutter/material.dart';
import "package:izaan_eshop/components/button/button.dart";
import "package:izaan_eshop/screens/cart/cart_item.dart";
import "package:izaan_eshop/screens/cart/cart_bill.dart";

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Cart",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CartItem(),
                      CartItem(),
                      CartItem(),
                      CartItem(),
                      CartItem(),
                      CartItem(),
                      SizedBox(
                        height: 20,
                      ),
                      CartBill(),
                      SizedBox(
                        height: 30,
                      ),
                      Button(
                          color: Colors.black87,
                          textColor: Colors.white,
                          title: "Continue",
                          onPressed: () {
                            // Navigator.pushNamed(context, "/cart");
                          })
                    ],
                  )),
            ],
          ),
        ),
      )),
    );
  }
}
