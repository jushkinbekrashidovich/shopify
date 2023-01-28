import 'package:carousel_slider/carousel_slider.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopify/app/const/app_colors.dart';
import 'package:shopify/app/const/app_text_style.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
            builder: (controller) => Scaffold(
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
        body: RefreshIndicator(
          onRefresh: ()async{
            await controller.refreshList();

          },
          child: Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: ListView(
                children: [
                  Container(
                    height: 84,
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: TextField(
                      // controller: controller.searchController,
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
                    height: 180,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Special Offer", style: AppTextStyles.contentTitle),
                        SizedBox(
                          height: 10,
                        ),
                        CarouselSlider(
                          items: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                //height: 40,
                                margin: EdgeInsets.only(top: 1, bottom: 1),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.0),
                                  // image: DecorationImage(
                                  //   image: NetworkImage(post.photo_url.toString()),
                                  //   fit: BoxFit.cover,
                                  // ),
                                ),
                                child: Image.asset("assets/discount.png"),
        
                                // FancyShimmerImage(
                                //   errorWidget: Icon(
                                //     Icons.error,
                                //     color: Colors.red,
                                //     size: 28,
                                //   ),
                                //   boxFit: BoxFit.cover,
                                //   imageUrl:
                                //       "https://www.mediapark.uz/upload/file/sliders/main_slides/XIAOMI_12T_PRO_1_1210_550_1310.webp",
                                // ),
                              ),
                            )
                          ],
                          options: CarouselOptions(
                            height: 123.0,
                            enlargeCenterPage: true,
                            autoPlay: true,
                            aspectRatio: 16 / 9,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: true,
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 340),
                            viewportFraction: 1.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //SizedBox(height: 10,),
                  Container(
                    height: 60,
                    child: ListView.builder(
                      //shrinkWrap: true,
                      itemCount: 20,
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          //height: 10,
                          width: 125,
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.table_chart,
                              color: Colors.black,
                            ),
                            label: Text(
                              "Category",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "ALl products",
                    style: AppTextStyles.contentTitle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FutureBuilder(
                    
                      future: controller.fetchProducts(),
                      builder: (context, snapshot) {
                        if (snapshot.data == null) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const CircularProgressIndicator();
                        } else {
                          return GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              gridDelegate:
                                  const SliverGridDelegateWithMaxCrossAxisExtent(
                                      maxCrossAxisExtent: 200,
                                      childAspectRatio: 1 / 1.7,
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 10),
                              itemCount: snapshot.data!.length,
                              itemBuilder: (BuildContext ctx, index) {
                                return Container(
                                  padding: EdgeInsets.all(8),
                                  height: 244,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: BorderRadius.circular(14)),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/product.png",
                                        height: 70,
                                        width: 70,
                                      ),
                                      SizedBox(
                                        height: 14,
                                      ),
                                      Column(
                                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                snapshot.data![index].title
                                                    .toString(),
                                                style: AppTextStyles.productTitle,
                                                maxLines: 2,
                                              ),
                                              Text(
                                                snapshot.data![index].company
                                                    .toString(),
                                                textAlign: TextAlign.start,
                                                style: AppTextStyles.companyTitle,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                snapshot.data![index].priceAfter
                                                    .toString(),
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    color: AppColors.red,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                snapshot.data![index].priceBefore
                                                    .toString(),
                                                style: TextStyle(
                                                    decoration: TextDecoration
                                                        .lineThrough,
                                                    fontSize: 16,
                                                    color: AppColors.greyColor),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          InkWell(
                                            onTap: ()async{
                                              print(index);
                                              controller.addFavorite(index);
                                            },
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10),
                                              height: 30,
                                              width: 120,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: AppColors.mainActiveColor),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.shopping_bag,
                                                    size: 20,
                                                  ),
                                                  SizedBox(
                                                    width: 4,
                                                  ),
                                                  Text(
                                                    "Subscribe",
                                                    style: TextStyle(
                                                        color: AppColors.white),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              });
                        }
                      }),
                ],
              ),
            ),
          ),
        ));
  }
}



// Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text("All products", style: AppTextStyles.contentTitle),
//                 GridView.builder(
//                     //shrinkWrap: true,
//                     gridDelegate:
//                         const SliverGridDelegateWithMaxCrossAxisExtent(
//                             maxCrossAxisExtent: 200,
//                             childAspectRatio: 1 / 2,
//                             crossAxisSpacing: 20,
//                             mainAxisSpacing: 20),
//                     itemCount: 5,
//                     itemBuilder: (BuildContext ctx, index) {
//                       return Container(
//                         padding: EdgeInsets.all(10),
//                         height: 214,
//                         width: 150,
//                         decoration: BoxDecoration(
//                             color: AppColors.white,
//                             borderRadius: BorderRadius.circular(14)),
//                         child: Column(
//                           children: [
//                             Image.asset(
//                               "assets/product.png",
//                               height: 70,
//                               width: 70,
//                             ),
//                             SizedBox(
//                               height: 14,
//                             ),
//                             Column(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text(
//                                   "Product_name",
//                                   style: AppTextStyles.productTitle,
//                                 ),
//                                 Text(
//                                   "Company name",
//                                   textAlign: TextAlign.start,
//                                   style: AppTextStyles.companyTitle,
//                                 ),
//                                 Container(
//                                   child: Column(
//                                     children: [
//                                       Text("price before"),
//                                       Text("Price after"),
//                                     ],
//                                   ),
//                                 ),
//                                 RawMaterialButton(
//                                   onPressed: () {},
//                                   elevation: 0,
//                                   hoverElevation: 0,
//                                   constraints: BoxConstraints(
//                                       maxWidth: 35, maxHeight: 35),
//                                   fillColor: AppColors.mainActiveColor,
//                                   padding: EdgeInsets.all(10.0),
//                                   shape: CircleBorder(),
//                                   child: Icon(
//                                     Icons.notifications_active,
//                                     size: 20,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       );
//                     }),
//               ],
//             ),
