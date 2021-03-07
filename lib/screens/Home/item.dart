import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  Item({this.itemName, this.onTap});

  final String itemName;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: onTap,
      child: Container(
        width: width * 0.4,
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              foregroundDecoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/laptop.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              height: height * 0.2,
            ),
            SizedBox(
              height: 5,
            ),
            Text("\$ 1200", style: TextStyle(fontSize: 16)),
            SizedBox(
              height: 5,
            ),
            Text(
              itemName,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
