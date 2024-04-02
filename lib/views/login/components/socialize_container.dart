import 'package:flutter/material.dart';

class LoginSocializeContainer extends StatelessWidget {
  const LoginSocializeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              child: Text(
            "Or login with social account",
            style: TextStyle(fontSize: 16),
          )),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding:
                      EdgeInsets.only(left: 35, right: 35, top: 25, bottom: 25),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: Image.asset(
                    "assets/images/googleicon.png",
                    width: 24,
                    height: 24,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 35, right: 35, top: 25, bottom: 25),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: Image.asset(
                    "assets/images/facebookicon.png",
                    width: 24,
                    height: 24,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
