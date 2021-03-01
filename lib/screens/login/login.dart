import 'package:flutter/material.dart';
import "package:izaan_eshop/components/button/button.dart";
import "package:izaan_eshop/utils/validators.dart";

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    String email = "";
    String password = "";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        color: Colors.white,
        child: SizedBox.expand(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Login",
                style: TextStyle(color: Colors.black, fontSize: 28),
              ),
              SizedBox(
                height: 40,
              ),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      onChanged: (el) {
                        // setState(() {
                        //   email = el;
                        // });
                      },
                      decoration: const InputDecoration(
                        hintText: 'Enter your email',
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'This field is required';
                        }

                        if (!Validators.validateEmail(value)) {
                          return 'Please enter a valid email';
                        }

                        // setState(() {
                        //   email = value;
                        // });

                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onChanged: (el) {},
                      decoration: const InputDecoration(
                        hintText: 'Enter your password',
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'This field is required';
                        }

                        String passwordError =
                            Validators.validatePassword(value);

                        if (passwordError.isNotEmpty) {
                          return passwordError;
                        }

                        // setState(() {
                        //   password = value;
                        // });

                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Button(
                        color: Colors.black87,
                        textColor: Colors.white,
                        title: "Login",
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            Navigator.pushNamed(context, "/home");
                          }
                        })
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
