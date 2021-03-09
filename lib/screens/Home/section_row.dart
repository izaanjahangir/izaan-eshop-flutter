import 'package:flutter/material.dart';
import "package:izaan_eshop/components/text_button/text_button.dart" as TB;

class SectionRow extends StatelessWidget {
  final String title;
  final Function onTitlePress;

  SectionRow({this.title, this.onTitlePress});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(fontSize: 20),
            ),
          ),
          TB.TextButton(
            label: "See all",
            onTab: onTitlePress,
          )
        ],
      ),
    );
  }
}
