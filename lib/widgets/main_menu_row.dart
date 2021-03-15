import 'package:coffee_app/colors.dart';
import 'package:flutter/material.dart';

class MenuRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: MainColors.subDark
      ),
      child: Row(
        children: [

          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: MainColors.light,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Text('Coffee', style: TextStyle(color: MainColors.dark,), textAlign: TextAlign.center,),
            ),
          ),

          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text('Cake', style: TextStyle(color: MainColors.light), textAlign: TextAlign.center,),
            ),
          ),

          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text('Snack', style: TextStyle(color: MainColors.light), textAlign: TextAlign.center,),
            ),
          ),

        ],
      ),
    );
  }
}