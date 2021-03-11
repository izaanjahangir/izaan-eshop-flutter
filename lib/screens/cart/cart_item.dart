import 'package:flutter/material.dart';
import "package:izaan_eshop/screens/cart/cart_actions.dart";

class CartItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
        margin: EdgeInsets.only(bottom: 10),
        child: Card(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/laptop.jpg",
                width: width * 0.25,
                height: width * 0.25,
                fit: BoxFit.cover,
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Laptop",
                      maxLines: 1,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "Description",
                      maxLines: 1,
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "\$ 30",
                      maxLines: 1,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CartActions()
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(
                  "assets/icons/close.png",
                  width: width * 0.03,
                  height: width * 0.03,
                ),
              )
            ],
          ),
        )));
  }
}
