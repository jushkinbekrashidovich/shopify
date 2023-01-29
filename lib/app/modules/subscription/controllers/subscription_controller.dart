import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../../../data/favorite_products.dart';

class SubscriptionController extends GetxController {
  //TODO: Implement SubscriptionController
  var products = <FavoriteProducts>[];
  late FirebaseFirestore firestore;

  final count = 0.obs;
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
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  Future<List<FavoriteProducts>> fetchProducts() async {
    final List<FavoriteProducts> productsModel = [];

    await firestore.collection("favorite_products").get().then((snapshot) {
      return snapshot.docs.forEach((element) {
        final product = FavoriteProducts.fromJson(element.data());
        product.id = element.id;
        productsModel.add(product);
      });
    });
    return productsModel;
  }



}
