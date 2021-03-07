import 'package:flutter/material.dart';
import "package:izaan_eshop/components/text_button/text_button.dart" as TB;

class SectionRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              "Title",
              style: TextStyle(fontSize: 20),
            ),
          ),
          TB.TextButton(
            label: "See all",
            onTab: () {},
          )
        ],
      ),
    );
  }
}
