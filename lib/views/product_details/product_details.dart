import 'package:flutter/material.dart';
import 'package:restaurant_app/views/product_details/components/product_details_button.dart';
import 'package:restaurant_app/views/product_details/components/product_details_stack.dart';

class ProductDetailsScreen extends StatefulWidget {
  ProductDetailsScreen({super.key});
  static const route = "productDetails";

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Center(
          child: Text("Product name"),
        ),
        actions: [Icon(Icons.share)],
      ),
      body: Stack(children: [
        ProductCardStack(),
        ProductDetailsStackButton(),
      ]),
    );
  }
}

