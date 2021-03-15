import 'package:flutter/material.dart';

class SideImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset('assets/images/coffee_side_right.png', height: 100,),
        Image.asset('assets/images/coffee_side_left.png', height: 100,),
      ],
    );
  }
}