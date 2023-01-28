import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shopify/app/const/app_theme.dart';

import 'app/modules/main/bindings/main_binding.dart';
import 'app/modules/splash/bindings/splash_binding.dart';
import 'app/routes/app_pages.dart';


Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print("Handling a background message");
}
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();

   FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    
    print('Got a message whilst in the foreground!');
    print('Message data: ${message.data}');



    Get.snackbar(message.notification!.title!, message.notification!.body!,);
//
    if (message.notification != null) {
      print('Message also contained a notification: ${message.notification}');
    }
  });
  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  FirebaseMessaging.onMessageOpenedApp.listen((event) {
    // NotificationService().selectNotification(json.encode(event.data));
    Get.toNamed('/notifications');
    // print("Received in background while the app is paused and not detached");
  });


   
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
       initialBinding: SplashBinding(),
       theme: AppThemes.light,
       debugShowCheckedModeBanner: false,
    ),
  );
}
