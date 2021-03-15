import 'package:coffee_app/colors.dart';
import 'package:flutter/material.dart';

class MainPageIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Container(
            width: 26,
            height: 8,
            decoration: BoxDecoration(
              color: MainColors.dark,
              borderRadius: BorderRadius.circular(10)
            ),
          ),

          Container(
            width: 8,
            height: 8,
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: MainColors.subDark.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10)
            ),
          ),

          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: MainColors.subDark.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10)
            ),
          ),

        ],
      ),
    );
  }
}