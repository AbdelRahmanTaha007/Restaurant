import 'package:flutter/material.dart';

class NewRow extends StatelessWidget {
  const NewRow({super.key});

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
                "New",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                "You've never seen it before!",
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
