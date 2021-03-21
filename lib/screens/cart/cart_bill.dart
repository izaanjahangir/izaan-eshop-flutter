import 'package:flutter/material.dart';

class CartBill extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(color: Colors.black26, width: 1),
              bottom: BorderSide(color: Colors.black26, width: 1))),
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          CartBillRow(
            label: "Sub total",
            amount: "100",
          ),
          CartBillRow(
            label: "Discount",
            amount: "0",
          )
        ],
      ),
    );
  }
}

class CartBillRow extends StatelessWidget {
  final String label;
  final String amount;

  CartBillRow({this.label, this.amount});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
          Text("\$ " + amount, style: TextStyle(fontSize: 16))
        ],
      ),
    );
  }
}
