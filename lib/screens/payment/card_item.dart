import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Card(
        child: Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        children: [
          Image.asset(
            "assets/images/visa.png",
            width: width * 0.1,
            height: width * 0.1,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              "4111*********",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Radio(
            value: "1",
            groupValue: "1",
            onChanged: (value) {},
          )
        ],
      ),
    ));
  }
}
