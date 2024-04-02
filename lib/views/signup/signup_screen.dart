import 'package:flutter/material.dart';
import 'package:restaurant_app/views/login/components/login_form.dart';
import 'package:restaurant_app/views/signup/components/signup_form.dart';
import 'package:restaurant_app/views/signup/components/socialize_container.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  static const String route = "signup";
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: Color(0xFFF9F9F9),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Login H1 container start
                Container(
                  margin: EdgeInsets.only(top: 12, bottom: 35),
                  child: Text(
                    "Sign up",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                // Login container End
                // // form container start

                SignupForm(),
                // // Form container End
                // socialize container Start
                SignupScoializeContainer()
                // socialize container Start
              ],
            ),
          ),
        ),
      ),
    );
  }
}
