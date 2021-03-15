import 'package:coffee_app/colors.dart';
import 'package:flutter/material.dart';

class CoffeeInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        // PRICE
        Text('\$24', style: TextStyle(fontSize: 23, fontWeight: FontWeight.w900, color: MainColors.dark),),

        SizedBox(height: 20),
        // COFFEE NAME AND DESCRIPTION
        Text('Mochaccino', style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900, color: MainColors.dark),),
        SizedBox(height: 10),
        Text(
          'Chocolate flavoured variant\nof a caffe latte', 
          style: TextStyle(fontSize: 18, color: MainColors.subDark),
          textAlign: TextAlign.center,
        ),

      ],
    );
  }
}