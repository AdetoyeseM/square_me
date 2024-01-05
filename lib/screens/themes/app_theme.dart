import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:square__me/screens/constants/colors.dart';
import 'package:square__me/screens/text_decorations/text_decoration.dart';
import 'app_bar_theme.dart';
import 'input_theme.dart';

class LightThemeData {
  static ThemeData lightAppTheme = ThemeData(
      scaffoldBackgroundColor: SquareColors.white,
      primaryColor: SquareColors.appBlue,
      textTheme: GoogleFonts.quicksandTextTheme(),
      snackBarTheme: SnackBarThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 10.0,
        behavior: SnackBarBehavior.floating,
        contentTextStyle: appTextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: SquareColors.white),
        showCloseIcon: true,
        actionTextColor: SquareColors.white,
        closeIconColor: SquareColors.white,
        backgroundColor: SquareColors.appBlue,
      ),
      appBarTheme: PrimaryOfferAppBarThemeLight.lightAppBarTheme,
      inputDecorationTheme:
          PrimaryOfferInputThemeLight.lightInputDecorationTheme,
      colorScheme: ThemeData.light()
          .colorScheme
          .copyWith(
              primary: SquareColors.appBlue,
              secondary: SquareColors.appLightBlue)
          .copyWith(background: Colors.white));
}
