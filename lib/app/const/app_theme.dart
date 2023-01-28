import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';
import 'app_text_style.dart';

class AppThemes {
  AppThemes._();

  static final ThemeData light = ThemeData(
    useMaterial3: true,
   // canvasColor: Colors.transparent,
    primaryColor: AppColors.white,
    scaffoldBackgroundColor: AppColors.background,
    cardColor: AppColors.white,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme:  ColorScheme(
      primary: AppColors.white,
      secondary: AppColors.white,
      surface: Colors.transparent,
      background: AppColors.background,
      error: AppColors.red,
      onPrimary: AppColors.mainColor,
      onSecondary: AppColors.mainColor,
      onSurface: AppColors.mainColor,
      onBackground: AppColors.background,
      onError: AppColors.red,
      brightness: Brightness.dark,
    ),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      },
    ),
    appBarTheme:  AppBarTheme(
      

      

      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
        // ios
        statusBarBrightness: Brightness.light,
        // android
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      iconTheme: IconThemeData(
        color: AppColors.mainColor,
      ),
      titleTextStyle: AppTextStyles.appBarTitle,
      color: AppColors.background,
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        color: AppColors.black,
      ),
      bodyText2: TextStyle(
        color: AppColors.black,
      ),
    ),
    fontFamily: 'SFPro',
  );

}
