import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String title;
  final Color textColor;
  final Color color;
  final Function onPressed;

  Button({this.title, this.textColor, this.color, this.onPressed});

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      minWidth: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 15),
      color: widget.color,
      textColor: widget.textColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Text(
        widget.title,
        style: TextStyle(fontSize: 16),
      ),
      onPressed: widget.onPressed,
    );
  }
}
