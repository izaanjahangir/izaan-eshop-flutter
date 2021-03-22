import 'package:flutter/material.dart';
import "package:izaan_eshop/components/button/button.dart";
import "package:izaan_eshop/config/theme_colors.dart";

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
          child: SizedBox.expand(
        child: Container(
          color: ThemeColors.themeTransparent,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Column(
            children: [
              Text(
                "Welcome to izaan eshop",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: "RocknRollOne",
                    color: ThemeColors.black),
              ),
              Expanded(
                child: Container(
                    child: Image.asset(
                  "assets/images/ecommerce.png",
                  width: width * 0.9,
                )),
              ),
              Button(
                title: "Log in",
                onPressed: () {
                  Navigator.pushNamed(context, "/login");
                },
                color: Colors.black87,
                textColor: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Button(
                title: "Sign up",
                color: Colors.transparent,
                onPressed: () {},
                textColor: Colors.black,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
