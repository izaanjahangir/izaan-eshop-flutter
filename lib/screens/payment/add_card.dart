import 'package:flutter/material.dart';
import "package:izaan_eshop/components/button/button.dart";

class AddCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    TextEditingController ccNumberController = TextEditingController();
    TextEditingController cvvController = TextEditingController();
    TextEditingController expiryController = TextEditingController();

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
                    TextFormField(
                      controller: expiryController,
                      decoration: const InputDecoration(
                        hintText: 'Expiry date',
                      ),
                      validator: (value) {
                        return null;
                      },
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
                          Navigator.pushNamed(context, "/home");
                        })
                  ],
                ),
              )
            ],
          )),
    );
  }
}
