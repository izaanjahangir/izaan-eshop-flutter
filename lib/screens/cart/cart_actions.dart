import 'package:flutter/material.dart';

class CartActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      CartActionButton(
        image: "assets/icons/minus-black.png",
      ),
      CartActionLabel(
        label: "1",
      ),
      CartActionButton(
        image: "assets/icons/plus-black.png",
      )
    ]);
  }
}

class CartActionLabel extends StatelessWidget {
  final String label;

  CartActionLabel({this.label});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
        color: Colors.grey[300],
        width: width * 0.08,
        height: width * 0.06,
        child: Center(
            child: Text(
          label,
          style: TextStyle(fontSize: 16),
        )));
  }
}

class CartActionButton extends StatelessWidget {
  final String image;

  CartActionButton({this.image});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return InkWell(
        onTap: () {},
        child: Ink(
          color: Colors.grey[300],
          child: Container(
              width: width * 0.08,
              height: width * 0.06,
              child: Center(
                child: Image(
                  height: width * 0.03,
                  width: width * 0.03,
                  image: AssetImage(
                    image,
                  ),
                ),
              )),
        ));
  }
}
