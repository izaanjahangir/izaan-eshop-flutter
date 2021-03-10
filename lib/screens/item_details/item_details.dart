import 'package:flutter/material.dart';
import "package:izaan_eshop/components/button/button.dart";

class ItemDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/laptop.jpg"),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Macbook Pro",
                          style: TextStyle(fontSize: 26),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "20 \$",
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Description")
                      ],
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Button(
                  color: Colors.black87,
                  textColor: Colors.white,
                  title: "Add to cart",
                  onPressed: () {
                    Navigator.pushNamed(context, "/cart");
                  }),
            )
          ],
        ),
      )),
    );
  }
}
