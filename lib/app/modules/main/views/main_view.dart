

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopify/app/modules/home/views/home_view.dart';
import 'package:shopify/app/modules/profile/views/profile_view.dart';
import 'package:shopify/app/modules/subscription/views/subscription_view.dart';

import '../../../const/app_colors.dart';
import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
        builder: (controller) => Scaffold(
              body: IndexedStack(
                index: controller.bottomMenu.index,
                children: [
                 HomeView(),
                 SubscriptionView(),
                 ProfileView(),
                ],
              ),
              bottomNavigationBar: BottomNavigationBar(
                
                unselectedItemColor: AppColors.black,
                selectedItemColor: AppColors.mainActiveColor,
                onTap: (pos) => controller.setMenu(BottomMenu.values[pos]),
                currentIndex: controller.bottomMenu.index,
                type: BottomNavigationBarType.fixed,
                backgroundColor: AppColors.white,
                selectedLabelStyle:  GoogleFonts.poppins(
                  fontSize: 11.2,
                ),
                unselectedLabelStyle: GoogleFonts.poppins(
                  fontSize: 11,
                  fontWeight: FontWeight.w400
                ),
                elevation: 8,
                items: [
                  _bottomNavigationBarItem(
                    icon: 'home',
                    label: "Home",
                    activeIcon: 'home_active',
                  ),
                  _bottomNavigationBarItem(
                    icon: 'saved',
                    label: "Subscription",
                    activeIcon: 'saved_active',
                  ),
                    _bottomNavigationBarItem(
                    icon: 'user',
                    label: "Profile",
                    activeIcon: 'user_active',
                  ),
                ],
              ),
            ));
  }
  _bottomNavigationBarItem({
    required String activeIcon,
    required String icon,
    required String label,
  }) {
    return BottomNavigationBarItem(
      backgroundColor: AppColors.white,
      //backgroundColor: AppColors.white,
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: Container(
            height: 25,
            width: 25,
            child: Image.asset('assets/icons/$icon.png')),
      ),
      activeIcon: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: Container(
            height: 25,
            width: 25,
            child: Image.asset('assets/icons/$activeIcon.png')),
      ),
      label: label,
    );
  }
}
