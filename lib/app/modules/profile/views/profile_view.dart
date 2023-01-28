import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../const/app_colors.dart';
import '../../../const/custom_title.dart';
import '../../../routes/app_pages.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  //final profileController = ProfileController();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (controller) => Scaffold(
        backgroundColor: AppColors.white,
        //appBar: AppBar(),
        body: ListView(
          children: [
            SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 18,
                ),
                CachedNetworkImage(
                  imageBuilder: (context, imageProvider) => Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: imageProvider, fit: BoxFit.cover),
                    ),
                  ),
                  imageUrl:
                      controller.firebaseAuth.currentUser!.photoURL.toString(),
                  placeholder: (context, url) => CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  controller.firebaseAuth.currentUser!.displayName.toString(),
                  style: GoogleFonts.urbanist(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Text(
                  controller.firebaseAuth.currentUser!.email.toString(),
                  style: GoogleFonts.urbanist(
                      fontSize: 13, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.ADD_PRODUCT);

                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.background,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.quick_contacts_dialer_outlined,
                          color: AppColors.greyColor,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Yordam kerakmi?",
                              style: GoogleFonts.urbanist(fontSize: 14),
                            ),
                            Text(
                              "Bizga murojaat qiling",
                              style: GoogleFonts.urbanist(fontSize: 14),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: AppColors.mainColor7,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Account ma'lumotlari",
                    style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.w600, fontSize: 22),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTitle(
                      title: "To'liq ismi",
                      subtitle:  controller.firebaseAuth.currentUser!.displayName.toString(),),
                  Container(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: DottedLine(
                      dashColor: AppColors.greyColor,
                    ),
                  ),
                  CustomTitle(
                      title: "Email",
                      subtitle:  controller.firebaseAuth.currentUser!.email.toString(),),
                  Container(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: DottedLine(
                      dashColor: AppColors.greyColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
