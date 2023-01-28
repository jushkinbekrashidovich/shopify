import 'package:get/get.dart';
import 'package:shopify/app/modules/profile/controllers/profile_controller.dart';
import 'package:shopify/app/modules/subscription/controllers/subscription_controller.dart';

import '../../home/controllers/home_controller.dart';
import '../controllers/main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(
      () => MainController(),
    );
     Get.lazyPut<HomeController>(
      () => HomeController(),
    );
     Get.lazyPut<SubscriptionController>(
      () => SubscriptionController(),
    );
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
    
  }
}
