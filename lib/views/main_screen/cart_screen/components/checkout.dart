import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              suffixIcon: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.black,
                ),
                padding: const EdgeInsets.all(6.0),
                child: Icon(
                  Icons.arrow_forward_rounded,
                  color: Colors.white,
                ),
              ),
              hintText: "Enter your promo code",
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total amout:",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "Price \$",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "CHECK OUT",
              style: TextStyle(color: Colors.white),
            ),
            style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(350.0, 50.0)),
                backgroundColor: MaterialStatePropertyAll(Colors.red)),
          )
        ],
      ),
    );
  }
}
