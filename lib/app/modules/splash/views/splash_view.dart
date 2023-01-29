import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../const/app_colors.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.mainColor,
        ),
        body: Container(
          color: AppColors.mainColor,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 200,
                  width: 180,
                  child: Image.asset('assets/logo.png')),
               
                Text(
                  'Shopify',
                  style: GoogleFonts.comfortaa(
                    fontSize: 40,
                    color: AppColors.white,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold
                  ),
                ),
               SizedBox(height: 50,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
