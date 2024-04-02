import 'package:flutter/material.dart';
import 'package:restaurant_app/views/main_screen/home_screen/components/image_stack.dart';
import 'package:restaurant_app/views/main_screen/home_screen/components/new_row.dart';
import 'package:restaurant_app/views/main_screen/home_screen/components/product_card.dart';
import 'package:restaurant_app/views/main_screen/home_screen/components/sale_row.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  static const String route = "mainScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              //Main page Stack Start
              ImageStack(),
              //Main page Stack End
              //Sale row Start
              SaleRow(),
              //Sale row End
              //Product Stack Start
              ProductCard(),
              //Product Stack End
              //New Row Start
              NewRow(),
              //New Row End
              //New product card Start
              ProductCard(),
              //New product card End
            ],
          ),
        ),
      ),
    );
  }
}
