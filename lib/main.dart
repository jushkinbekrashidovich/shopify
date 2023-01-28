import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shopify/app/const/app_theme.dart';

import 'app/modules/main/bindings/main_binding.dart';
import 'app/routes/app_pages.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
   
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
       initialBinding: MainBinding(),
       theme: AppThemes.light,
       debugShowCheckedModeBanner: false,
    ),
  );
}
