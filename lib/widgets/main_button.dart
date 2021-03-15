import 'package:coffee_app/colors.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String text;
  MainButton({this.text = 'ADD TO ORDER'});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        // CODE HERE
      },
      child: Container(
        width: MediaQuery.of(context).size.width*0.65,
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: MainColors.dark,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Icon(Icons.add, color: MainColors.light, size: 20),
            Text(this.text, style: TextStyle(fontSize: 14, color: MainColors.light),)

          ],
        ),
      ),
    );
  }
}