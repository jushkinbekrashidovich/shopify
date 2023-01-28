import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shopify/app/data/products_model.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  //final count = 0.obs;
  TextEditingController? searchController = TextEditingController();
  late FirebaseFirestore firestore;
  var products = <Products>[];

  
  @override
  void onInit() {
    firestore = FirebaseFirestore.instance;
    super.onInit();
  }

   @override
  void onReady() async{
    try{
      products = await fetchProducts();
      

    }catch(e){
      print(e.toString());
    }
    super.onReady();
  }

  @override
  void onClose() {}

  Future<Null> refreshList() async{
      await fetchProducts();
      update();
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
  

