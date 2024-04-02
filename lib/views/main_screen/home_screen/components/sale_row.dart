import 'package:flutter/material.dart';

class SaleRow extends StatelessWidget {
  const SaleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sale",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                "Super summer sale",
                style: TextStyle(
                  fontSize: 15,
                ),
              )
            ],
          ),
          Text(
            "view all",
            style: TextStyle(
              fontSize: 15,
            ),
          )
        ],
      ),
    );
  }
}
