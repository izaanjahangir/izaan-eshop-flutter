import 'package:flutter/material.dart';
import "package:izaan_eshop/components/button/button.dart";
import "package:izaan_eshop/components/date_input/date_input.dart";

class AddCard extends StatefulWidget {
  @override
  _AddCardState createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  DateTime expiryDate;

  onExpiryDate(selectedDate) {
    setState(() {
      expiryDate = selectedDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    TextEditingController ccNumberController = TextEditingController();
    TextEditingController cvvController = TextEditingController();

    return SingleChildScrollView(
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: ccNumberController,
                      decoration: const InputDecoration(
                        hintText: 'Card number',
                      ),
                      validator: (value) {
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: cvvController,
                      decoration: const InputDecoration(
                        hintText: 'CVV',
                      ),
                      validator: (value) {
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DateInput(
                      value: expiryDate,
                      placeholder: "Expiry Date",
                      onDateSelect: onExpiryDate,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Button(
                        color: Colors.black87,
                        textColor: Colors.white,
                        title: "Save card",
                        onPressed: () {
                          // if (_formKey.currentState.validate()) {
                          //   Navigator.pushNamed(context, "/home");
                          // }
                          // Navigator.pushNamed(context, "/home");
                        }),
                    SizedBox(
                      height: 10,
                    ),
                    Button(
                        color: Colors.black87,
                        textColor: Colors.white,
                        title: "Cancel",
                        onPressed: () {
                          Navigator.pop(context);
                        })
                  ],
                ),
              )
            ],
          )),
    );
  }
}
