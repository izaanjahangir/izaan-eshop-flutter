import 'package:flutter/material.dart';
import "package:izaan_eshop/screens/home/item.dart";

class HomeItemSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      height: height * 0.3,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Item(
            onTap: () {},
            itemName: "Macbook pro",
          ),
          Item(
            onTap: () {},
            itemName: "Macbook pro with 8GB ram and 256GB of SSD",
          ),
          Item(
            onTap: () {},
            itemName: "Macbook pro",
          ),
          Item(
            onTap: () {},
            itemName: "Macbook pro",
          )
        ],
      ),
    );
  }
}
