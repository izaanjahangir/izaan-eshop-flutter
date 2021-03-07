import 'package:flutter/material.dart';
import "package:izaan_eshop/components/category_box/category_box.dart";
import "package:izaan_eshop/screens/home/section_row.dart";
import "package:izaan_eshop/screens/home/item.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: SafeArea(
          child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                children: [
                  SectionRow(
                    title: "Categories",
                  ),
                  Container(
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
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SectionRow(
                    title: "Featured",
                  ),
                  Container(
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
                  ),
                ],
              ))),
    );
  }
}
