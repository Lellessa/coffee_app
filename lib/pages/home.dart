import 'package:coffee_app/clips/clippath.dart';
import 'package:coffee_app/colors.dart';
import 'package:coffee_app/widgets/information.dart';
import 'package:coffee_app/widgets/logo_horizontal.dart';
import 'package:coffee_app/widgets/main_button.dart';
import 'package:coffee_app/widgets/main_image.dart';
import 'package:coffee_app/widgets/main_menu.dart';
import 'package:coffee_app/widgets/main_menu_row.dart';
import 'package:coffee_app/widgets/main_page_indicator.dart';
import 'package:coffee_app/widgets/side_images.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColors.light,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Stack(
                alignment: Alignment.bottomCenter,
                children: [

                  //CLIP
                  ClipPath(
                    clipper: ClipPathClass(),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.55,
                      padding: EdgeInsets.only(bottom: 10),
                      alignment: Alignment.bottomCenter,
                      color: MainColors.dark,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          // FIRST ROW
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                LogoHorizontal(),

                                MainMenu(),
                              ],
                            )
                          ),

                          // SECOND ROW
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: MenuRow(),
                          ),

                          MainImage(),
                        ],
                      )
                    ),
                  ),
                  
                  // SIDE IMAGES
                  Container(
                    margin: EdgeInsets.only(bottom: 60),
                    child: SideImages()
                  ),

                ],
              ),

              SizedBox(height: 20),
              // INDICATOR
              MainPageIndicator(),

              SizedBox(height: 30),
              // INFORMATION
              CoffeeInformation(),

              // SHOP BUTTON
              SizedBox(height: 30),
              MainButton(),

            ],
          ),
        ),
      ),
    );
  }
}