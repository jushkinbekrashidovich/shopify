
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../const/app_colors.dart';
import '../controllers/auth_controller.dart';

class AuthView extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      builder: (controller) => (Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: AppColors.background,
            automaticallyImplyLeading: false,
           
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 163,
                //color: Colors.blue,
                padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome to'.tr,
                          style: const TextStyle(
                              fontSize: 20, color: AppColors.mainColor),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Shopify',
                          style: GoogleFonts.comfortaa(
                              fontSize: 25,
                              color: AppColors.mainColor,
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                
                height: 120,
                //color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        controller.login();
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 0, 132, 255),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              height: 35,
                              width: 35,
                              child: SizedBox(
                                  height: 18,
                                  width: 18,
                                  child:SvgPicture.asset("assets/google.svg")),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Continue with Google'.tr,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ))),
    );
  }
}
