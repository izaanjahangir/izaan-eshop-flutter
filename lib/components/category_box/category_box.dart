import 'package:flutter/material.dart';

class CategoryBox extends StatelessWidget {
  CategoryBox({this.categoryName, this.imagePath, this.backgroundColor});

  final String categoryName;
  final String imagePath;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;

    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        print(categoryName);
      },
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.1), BlendMode.dstATop),
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
          color: backgroundColor,
        ),
        child: Container(
          width: width * 0.3,
          child: Center(
              child: Text(
            categoryName,
            style: TextStyle(color: Colors.white, fontSize: 18),
          )),
        ),
      ),
    );
  }
}
