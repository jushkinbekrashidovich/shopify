import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static const appBarTitle = TextStyle(
    color: AppColors.black,
    fontSize: 17,
    fontWeight: FontWeight.w600,
  );

  static var contentTitle = GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold);
  static var productTitle = GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600);
  static var companyTitle = GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey);


 
}
