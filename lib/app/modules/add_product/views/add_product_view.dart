import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shopify/app/routes/app_pages.dart';

import '../../../const/app_colors.dart';
import '../controllers/add_product_controller.dart';

class AddProductView extends GetView<AddProductController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddProductController>(
        builder: (controller) => Scaffold(
              appBar: AppBar(
                title: Text('AddProductView'),
                centerTitle: true,
              ),
              body: ListView(
                children: [
                  Container(
                    height: 84,
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: TextField(
                      controller: controller.product_titleController,
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
                            borderSide: BorderSide(
                                width: 2, color: AppColors.mainColor),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: "Product title",
                          hintStyle: TextStyle(
                            color: AppColors.greyColor,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 84,
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: TextField(
                      controller: controller.company_nameController,
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
                            borderSide: BorderSide(
                                width: 2, color: AppColors.mainColor),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: "Market name",
                          hintStyle: TextStyle(
                            color: AppColors.greyColor,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 84,
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: TextField(
                      controller: controller.price_afterController,
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
                            borderSide: BorderSide(
                                width: 2, color: AppColors.mainColor),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: "Price after",
                          hintStyle: TextStyle(
                            color: AppColors.greyColor,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 84,
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: TextField(
                      controller: controller.price_beforeController,
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
                            borderSide: BorderSide(
                                width: 2, color: AppColors.mainColor),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: "price before",
                          hintStyle: TextStyle(
                            color: AppColors.greyColor,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 84,
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: TextField(
                      controller: controller.description,
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
                            borderSide: BorderSide(
                                width: 2, color: AppColors.mainColor),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: "Description",
                          hintStyle: TextStyle(
                            color: AppColors.greyColor,
                          )),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 84,
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: TextField(
                      controller: controller.image_url,
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
                            borderSide: BorderSide(
                                width: 2, color: AppColors.mainColor),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: "image url",
                          hintStyle: TextStyle(
                            color: AppColors.greyColor,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 84,
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: TextField(
                      controller: controller.discount,
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
                            borderSide: BorderSide(
                                width: 2, color: AppColors.mainColor),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: "discout",
                          hintStyle: TextStyle(
                            color: AppColors.greyColor,
                          )),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.addProducts();
                      Get.offAllNamed(Routes.MAIN);

                  }, child: Text("Submit"))
                ],
              ),
            ));
  }
}
