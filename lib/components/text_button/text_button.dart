import 'package:flutter/material.dart';

class TextButton extends StatelessWidget {
  TextButton({this.label, this.onTab});

  final String label;
  final Function onTab;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(label),
      onTap: onTab,
    );
  }
}
