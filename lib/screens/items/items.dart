import 'package:flutter/material.dart';
import "package:izaan_eshop/screens/home/item.dart";

class Items extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  args["title"],
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Item(
                      onTap: () {
                        Navigator.pushNamed(context, "/item-details");
                      },
                      itemName: "Macbook pro",
                    ),
                    Item(
                      onTap: () {
                        Navigator.pushNamed(context, "/item-details");
                      },
                      itemName: "Macbook pro",
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Item(
                      onTap: () {
                        Navigator.pushNamed(context, "/item-details");
                      },
                      itemName: "Macbook pro",
                    ),
                    Item(
                      onTap: () {
                        Navigator.pushNamed(context, "/item-details");
                      },
                      itemName: "Macbook pro",
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Item(
                      onTap: () {
                        Navigator.pushNamed(context, "/item-details");
                      },
                      itemName: "Macbook pro",
                    ),
                    Item(
                      onTap: () {
                        Navigator.pushNamed(context, "/item-details");
                      },
                      itemName: "Macbook pro",
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Item(
                      onTap: () {
                        Navigator.pushNamed(context, "/item-details");
                      },
                      itemName: "Macbook pro",
                    ),
                    Item(
                      onTap: () {
                        Navigator.pushNamed(context, "/item-details");
                      },
                      itemName: "Macbook pro",
                    ),
                  ],
                ),
              ],
            )),
      )),
    );
  }
}
