import 'package:flutter/material.dart';
import "package:izaan_eshop/screens/home/section_row.dart";
import "package:izaan_eshop/screens/home/home_item_slider.dart";
import "package:izaan_eshop/screens/home/home_category_slider.dart";

class Home extends StatelessWidget {
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
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              children: [
                SectionRow(
                  title: "Categories",
                ),
                HomeCategorySlider(),
                SizedBox(
                  height: 30,
                ),
                SectionRow(
                  title: "Featured",
                  onTitlePress: () {
                    Navigator.pushNamed(context, "/items",
                        arguments: {"title": "Featured"});
                  },
                ),
                HomeItemSlider(),
                SizedBox(
                  height: 30,
                ),
                SectionRow(
                  title: "Best Selling",
                  onTitlePress: () {
                    Navigator.pushNamed(context, "/items",
                        arguments: {"title": "Best Selling"});
                  },
                ),
                HomeItemSlider()
              ],
            )),
      )),
    );
  }
}
