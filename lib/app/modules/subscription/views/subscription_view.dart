import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_text_style.dart';
import '../controllers/subscription_controller.dart';

class SubscriptionView extends GetView<SubscriptionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SubscriptionView'),
          centerTitle: true,
        ),
        body: GetBuilder<SubscriptionController>(
          builder: (controller) => FutureBuilder(
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
                                          childAspectRatio: 1 / 1.9,
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
                                          borderRadius:
                                              BorderRadius.circular(14)),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 130,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(3.0),
                                              // image: DecorationImage(
                                              //   image: NetworkImage(post.photo_url.toString()),
                                              //   fit: BoxFit.cover,
                                              // ),
                                            ),
                                            child: FancyShimmerImage(
                                              errorWidget: Icon(
                                                Icons.error,
                                                color: Colors.red,
                                                size: 28,
                                              ),
                                              imageUrl: snapshot
                                                  .data![index].image_url
                                                  .toString(),
                                              boxFit: BoxFit.cover,
                                            ),
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
                                                    style: AppTextStyles
                                                        .productTitle,
                                                    maxLines: 2,
                                                  ),
                                                  Text(
                                                    snapshot
                                                        .data![index].company
                                                        .toString(),
                                                    textAlign: TextAlign.start,
                                                    style: AppTextStyles
                                                        .companyTitle,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                    snapshot
                                                        .data![index].priceAfter
                                                        .toString(),
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                        color: AppColors.red,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  SizedBox(width: 2,),
                                                  Text(
                                                    snapshot.data![index]
                                                        .priceBefore
                                                        .toString(),
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough,
                                                        fontSize: 16,
                                                        color: AppColors
                                                            .greyColor),
                                                  ),
                                                      
                                                    ],
                                                  ),
                                                 
                                                  Text(
                                                    snapshot.data![index]
                                                        .discount_time
                                                        .toString()+" kun",
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                        color: AppColors.red,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              InkWell(
                                                onTap: () async {
                                                  //print(index);
                                                  //controller.addFavorite(index);
                                                },
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 10),
                                                  height: 30,
                                                  width: 120,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      color: AppColors
                                                          .mainActiveColor),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
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
                                                            color: AppColors
                                                                .white),
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
        ));
  }
}
