import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shopify/app/const/app_colors.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.background,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "data",
                    style: TextStyle(
                        fontWeight: FontWeight.w300, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("data"),
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: SizedBox(
                    height: 49,
                    width: 49,
                    child: Image.asset("assets/icons/notification.png"),
                  )),
            ],
          ),

          //centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: ListView(
            children: [
              Container(
                height: 84,
                padding: EdgeInsets.only( top: 20, bottom: 20),
                child: TextField(
                  //focusNode: focusNode,
                  //keyboardType: keyboardType,
                  //controller: controller,
                  cursorColor: AppColors.mainColor,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: AppColors.greyColor,
                      ),
                      contentPadding: const EdgeInsets.all(12),
                      filled: true,
                      fillColor: AppColors.white,
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          gapPadding: 0,
                          borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2, color: AppColors.mainColor),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      hintText: "hintText",
                      hintStyle: TextStyle(
                        color: AppColors.greyColor,
                      )),
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Special Offer", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    
                  ],
                ),
              ),
        
            ],
          ),
        ),
      ),
    );
  }
}
