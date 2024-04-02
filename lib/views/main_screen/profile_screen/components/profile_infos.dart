import 'package:flutter/material.dart';

class ProfileInformation extends StatelessWidget {
  const ProfileInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Shipping address",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text("3 addresses", style: TextStyle(fontSize: 14)),
                
              ],
            ),
            Icon(Icons.arrow_forward_ios_outlined)
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My orders",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text("Already have 12 orders", style: TextStyle(fontSize: 14)),
              ],
            ),
            Icon(Icons.arrow_forward_ios_outlined)
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Payment methods",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text("VISA", style: TextStyle(fontSize: 14)),
              ],
            ),
            Icon(Icons.arrow_forward_ios_outlined)
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Promocodes",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text("You have special promocodes",
                    style: TextStyle(fontSize: 14)),
              ],
            ),
            Icon(Icons.arrow_forward_ios_outlined)
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My reviews",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text("Reviews for 4 items", style: TextStyle(fontSize: 14)),
              ],
            ),
            Icon(Icons.arrow_forward_ios_outlined)
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Settings",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text("Notifications , Passwords",
                    style: TextStyle(fontSize: 14)),
              ],
            ),
            Icon(Icons.arrow_forward_ios_outlined)
          ],
        ),
      ],
    );
  }
}
