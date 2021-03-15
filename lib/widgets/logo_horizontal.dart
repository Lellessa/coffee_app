import 'package:coffee_app/colors.dart';
import 'package:flutter/material.dart';

class LogoHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Image.asset(
          'assets/images/logo.png',
          width: 40,
        ),
        Text(
          'Koffein',
          style: TextStyle(fontSize: 27, color: MainColors.light, height: 0.5),
        )
      ],
    );
  }
}