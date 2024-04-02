import 'package:flutter/material.dart';
import 'package:restaurant_app/views/main_screen/cart_screen/components/cart_screen.dart';
import 'package:restaurant_app/views/main_screen/cart_screen/components/checkout.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static const route = "cartScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.search)],
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                CartListView(),
                CheckoutScreen(),
              ],
            )),
      ),
    );
  }
}
