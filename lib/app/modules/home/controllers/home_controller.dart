import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shopify/app/const/firebase_consts.dart';
import 'package:shopify/app/data/favorite_products.dart';
import 'package:shopify/app/data/products_model.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  //final count = 0.obs;
  TextEditingController? searchController = TextEditingController();
  late FirebaseFirestore firestore;
  var products = <Products>[];
  

  
  @override
  void onInit() async{
    firestore = FirebaseFirestore.instance;
    try{
      products = await fetchProducts();
      print(products[0].title.toString()+"product tile &&&");

    }catch(e){
      print(e.toString());
    }
    update();
    super.onInit();
  }

   @override
  void onReady() async{
    
    super.onReady();
  }

  @override
  void onClose() {}

  Future<Null> refreshList() async{
      await fetchProducts();
      update();
    }


    void addFavorite(index)async{

      print(products.toList());
      FavoriteProducts favoriteProducts = FavoriteProducts();
      favoriteProducts.userToken = await FirebaseMessaging.instance.getToken();

      favoriteProducts.title = products[index].title.toString(); 

      favoriteProducts.priceAfter =products[index].priceAfter.toString();

      favoriteProducts.priceBefore = products[index].priceBefore.toString();

      await firestore.collection("favorite_products").add(favoriteProducts.toJson());

    }

  Future<List<Products>> fetchProducts() async {
    final List<Products> productsModel = [];

    await firestore.collection("products").get().then((snapshot) {
      return snapshot.docs.forEach((element) {
        final product = Products.fromJson(element.data());
        product.id = element.id;
        productsModel.add(product);
      });
    });
    return productsModel;
  }

}
  

