import 'package:flutter/material.dart';

class ImageStack extends StatelessWidget {
  const ImageStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/pizza_image.jpg"),
                  fit: BoxFit.fill)),
          width: 400,
          height: 250,
        ),
        Positioned(
          bottom: 15,
          left: 10,
          child: Text(
            "Cairo Restaurant",
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
