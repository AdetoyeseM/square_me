import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:square__me/screens/constants/colors.dart';

TextStyle appTextStyle(
        {double? fontSize,
        Color? color,
        TextDecoration? decoration,
        String? fontfamily,
        TextBaseline? textBaseline,
        FontWeight? fontWeight,
        TextOverflow? overflow}) =>
    GoogleFonts.dmSans(
        decoration: decoration,
        fontSize: fontSize ?? 18,
        color: color ?? SquareColors.appBlack,
        textBaseline: textBaseline,
        fontWeight: fontWeight ?? FontWeight.w600);
