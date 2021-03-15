import 'package:coffee_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: MainColors.subDark,
        borderRadius: BorderRadius.circular(10)
      ),
      child: SvgPicture.asset('assets/svg/tray.svg', height: 20, color: MainColors.light,)
    );
  }
}