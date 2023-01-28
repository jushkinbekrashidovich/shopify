import 'package:get/get.dart';

import 'package:shopify/app/modules/auth/bindings/auth_binding.dart';
import 'package:shopify/app/modules/auth/views/auth_view.dart';
import 'package:shopify/app/modules/home/bindings/home_binding.dart';
import 'package:shopify/app/modules/home/views/home_view.dart';
import 'package:shopify/app/modules/main/bindings/main_binding.dart';
import 'package:shopify/app/modules/main/views/main_view.dart';
import 'package:shopify/app/modules/profile/bindings/profile_binding.dart';
import 'package:shopify/app/modules/profile/views/profile_view.dart';
import 'package:shopify/app/modules/splash/bindings/splash_binding.dart';
import 'package:shopify/app/modules/splash/views/splash_view.dart';
import 'package:shopify/app/modules/subscription/bindings/subscription_binding.dart';
import 'package:shopify/app/modules/subscription/views/subscription_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SUBSCRIPTION,
      page: () => SubscriptionView(),
      binding: SubscriptionBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.MAIN,
      page: () => MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.AUTH,
      page: () => AuthView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
  ];
}
