import 'package:flutter/material.dart';
import 'package:square__me/screens/constants/colors.dart';
import 'package:square__me/screens/text_decorations/text_decoration.dart'; 

class PrimaryOfferInputThemeLight {
  static OutlineInputBorder outlineInputBorder =  OutlineInputBorder(
      gapPadding: 15,
      borderRadius: const BorderRadius.all(
        Radius.circular(8),
      ),
      borderSide: BorderSide(
        style: BorderStyle.solid,
        width: 1  ,
        color: SquareColors.white_2));

  static OutlineInputBorder focusedInputBorder = OutlineInputBorder(
      gapPadding: 15,
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(
          width: 1, color: SquareColors.white_2));

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
      border: outlineInputBorder,
      focusedErrorBorder: outlineInputBorder,
      focusedBorder: focusedInputBorder,
      errorBorder: outlineInputBorder,
      filled: false,
      enabledBorder: outlineInputBorder,
      contentPadding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      
      hintStyle: appTextStyle(
          color: SquareColors.hintColor,
          fontWeight: FontWeight.w400,
          fontSize: 12));
}
