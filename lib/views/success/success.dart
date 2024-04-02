import 'package:flutter/material.dart';
import 'package:restaurant_app/views/main_screen/bottom_navi_bar.dart';
import 'package:restaurant_app/views/main_screen/home_screen/main_screen.dart';

class SuccessOrderScreen extends StatelessWidget {
  const SuccessOrderScreen({super.key});
  static const route = "successOrderScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              "assets/images/bags.png",
              width: 150,
              height: 150,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Success!",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Your order will be delivered soon."),
            Text("Thank you for choosing our app!"),
            SizedBox(
              height: 200,
            ),
            Container(
                margin: EdgeInsets.only(bottom: 30),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomNaviBarScreen()),
                    );
                  },
                  child: Text(
                    "CONTINUE SHOPPING",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      elevation: MaterialStatePropertyAll(8),
                      minimumSize:
                          MaterialStateProperty.all(Size(350.0, 50.0))),
                ))
          ],
        ),
      ),
    );
  }
}
