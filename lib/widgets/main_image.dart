import 'package:flutter/material.dart';

class MainImage extends StatelessWidget {
  final double width, height;
  final String image;

  MainImage({this.image = 'assets/images/coffee_3.png', this.width = 230, this.height = 230});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200),
        image: DecorationImage(
          image: AssetImage(
            this.image,
          ),
        )
      ),
    );
  }
}