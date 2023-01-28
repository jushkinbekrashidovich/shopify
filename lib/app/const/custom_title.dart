import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class CustomTitle extends StatelessWidget {
  final title;
  final subtitle;

  const CustomTitle({super.key, @required this.title, @required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title.toUpperCase(),
          style: const TextStyle(
              color: AppColors.greyColor,
              fontWeight: FontWeight.w500,
              fontSize: 13),
        ),
        const SizedBox(
          height: 7,
        ),
        Text(
          subtitle,
          style: GoogleFonts.poppins(
            letterSpacing: 0.1,
            fontWeight: FontWeight.w500,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}

class CustomSubtitle extends StatelessWidget {
  final subtitle;
  const CustomSubtitle({super.key, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Text(
        subtitle,
        style: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w400, color: Colors.blueGrey),
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
      ),
    );
  }
}
