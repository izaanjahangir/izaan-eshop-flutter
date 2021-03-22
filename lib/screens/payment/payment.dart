import 'package:flutter/material.dart';
import "package:izaan_eshop/components/button/button.dart";
import "package:izaan_eshop/screens/payment/add_card.dart";
import "package:izaan_eshop/screens/payment/card_item.dart";

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    openModel() {
      final Widget addCardWidget = AddCard();

      showModalBottomSheet<void>(
        isDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return addCardWidget;
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                "Payment",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CardItem(),
                          CardItem(),
                        ],
                      )),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: Button(
                  color: Colors.black87,
                  textColor: Colors.white,
                  title: "Add Card",
                  onPressed: openModel),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: Button(
                  color: Colors.black87,
                  textColor: Colors.white,
                  title: "Pay (\$ 10.00)",
                  onPressed: openModel),
            ),
          ],
        ),
      )),
    );
  }
}
