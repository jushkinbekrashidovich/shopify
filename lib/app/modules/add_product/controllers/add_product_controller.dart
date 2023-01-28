import 'dart:io';
import 'dart:async';
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shopify/app/data/add_product.dart';
import 'package:http/http.dart' as http;

class AddProductController extends GetxController {
  //TODO: Implement AddProductController
  TextEditingController product_titleController = TextEditingController();
  TextEditingController company_nameController = TextEditingController();
  TextEditingController price_afterController = TextEditingController();
  TextEditingController price_beforeController = TextEditingController();

  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  Future<void> addProducts() async {
    // FavoriteProducts favoriteProducts = FavoriteProducts();
    AddProducts addProducts = AddProducts();
    addProducts.company_name = company_nameController.text.toString();
    addProducts.title = product_titleController.text.toString();
    addProducts.priceAfter = price_afterController.text.toString();
    addProducts.priceBefore = price_beforeController.text.toString();
    addProducts.description = 'a';
    await firebaseFirestore.collection("products").add(addProducts.toJson());
    print("object");
    var favoriteProducts =
        await firebaseFirestore.collection("favorite_products").get();
    
   
    favoriteProducts.docs.forEach((element) {
      
      if (int.parse(element.data()['priceAfter']) >
              int.parse(price_afterController.text) &&
          element.data()['title'] == product_titleController.text) {
        http.post(
          Uri.parse("https://fcm.googleapis.com/fcm/send"),
           body:  json.encode({
            "to": element.data()['userToken'].toString(),
            "collapse_key": "type_a",
            "notification": {
              "body": "this is a body",
              "title": "this is a title"
            },
            "priority": "high",
            "data": {
              "click_action": "FLUTTER_NOTIFICATION_CLICK",
              "id": "1",
              "status": "done"
            }
          },) ,
          headers: {
            HttpHeaders.authorizationHeader: 
            "key=AAAAXWs6TCE:APA91bEJgI0aaPgd2wMt8sxMXrF3Qd38TcXs5q1UBWeI6Tbbvu87hQi106lM1d0ypb3N8k4BCrWfiNzVHSPb2wevfwSx_XjgCEgEcTPFQrMnyiWOH-lzks7KWP4YN9lYro9258WkDTVY"
            },
        ).then((http.Response response) {
          print(response.statusCode.toString()+"ajrespine");
          

        }).catchError((e){
          print(e.toString());
        });
      }
      print(element.data()['userToken']);
    });
  }
}
