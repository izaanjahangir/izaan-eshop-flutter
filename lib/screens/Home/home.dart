import 'package:flutter/material.dart';
import "package:izaan_eshop/components/category_box/category_box.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
          child: Container(
              padding: EdgeInsets.all(10),
              child: Container(
                height: height * 0.09,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoryBox(
                      categoryName: "Man",
                      imagePath: "./assets/images/boy.png",
                      backgroundColor: Colors.blue[300],
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    CategoryBox(
                      categoryName: "Women",
                      imagePath: "./assets/images/girl.png",
                      backgroundColor: Colors.red[300],
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    CategoryBox(
                      categoryName: "Kids",
                      imagePath: "./assets/images/kid.png",
                      backgroundColor: Colors.green[300],
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    CategoryBox(
                      categoryName: "Others",
                      imagePath: "./assets/images/accessories.png",
                      backgroundColor: Colors.cyan[300],
                    ),
                  ],
                ),
              ))),
    );
  }
}
