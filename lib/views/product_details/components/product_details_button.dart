import 'package:flutter/material.dart';

class ProductDetailsStackButton extends StatelessWidget {
  const ProductDetailsStackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      height: 100,
      bottom: 10,
      right: 25,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "ADD TO CART",
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(350.0, 50.0)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
