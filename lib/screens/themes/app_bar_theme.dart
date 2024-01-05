import 'package:flutter/material.dart';
import 'package:square__me/screens/constants/colors.dart'; 

class PrimaryOfferAppBarThemeLight {
  static AppBarTheme lightAppBarTheme = AppBarTheme(
      elevation: 0,
      toolbarHeight: kToolbarHeight,
      backgroundColor: SquareColors.white,
      iconTheme: iconThemeData,
      titleSpacing: 1,
      foregroundColor: SquareColors.appBlue,
      titleTextStyle: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
      ));

  static IconThemeData iconThemeData = IconThemeData(
    color: SquareColors.appBlack,
    size: 24,
  );
}
