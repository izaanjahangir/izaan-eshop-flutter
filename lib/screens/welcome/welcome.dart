import 'package:flutter/material.dart';
import "package:izaan_eshop/components/button/button.dart";

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox.expand(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Column(
            children: [
              Text(
                "Welcome to izaan eshop",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: "RocknRollOne",
                    color: Colors.grey[800]),
              ),
              Expanded(
                child: Container(),
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
