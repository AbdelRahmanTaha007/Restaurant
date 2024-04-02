import 'package:flutter/material.dart';

class ProductCardStack extends StatefulWidget {
  const ProductCardStack({super.key});

  @override
  State<ProductCardStack> createState() => _ProductCardStackState();
}

class _ProductCardStackState extends State<ProductCardStack> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            "https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGhvdG98ZW58MHx8MHx8fDA%3D",
            fit: BoxFit.fill,
            width: 400,
            height: 400,
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("Option 1"),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Option 2"),
                  ],
                ),
                Icon(Icons.favorite)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10, left: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Name",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Text("Category")
                  ],
                ),
                Text(
                  "\$ price",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nostrum vero nobis voluptatibus debitis dolore cupiditate dolor soluta suscipit voluptatum! Corporis, nobis culpa quam similique error pariatur cumque quibusdam nesciunt cum cupiditate, voluptatum assumenda repudiandae sequi deleniti atque? Voluptatem, dolore doloribus.",
                style: TextStyle(
                  fontSize: 18,
                ),
              )),
          SizedBox(
            height: 110,
          ),
        ],
      ),
    );
  }
}
