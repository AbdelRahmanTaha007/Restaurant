import 'package:flutter/material.dart';
import 'package:restaurant_app/views/login/components/login_form.dart';
import 'package:restaurant_app/views/login/components/socialize_container.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
static const String route = "login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // Login Title container start
            Container(
              margin: EdgeInsets.only(top: 12, bottom: 35),
              child: Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            // Login Title container end
            LoginForm(),
            LoginSocializeContainer(),
            
          ]),
        ),
      ),
    );
  }
}
