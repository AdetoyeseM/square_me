import 'package:flutter/material.dart';
import 'package:square__me/screens/constants/colors.dart';
import 'package:square__me/screens/text_decorations/text_decoration.dart'; 

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      this.height,
      this.backgroundColor,
      this.textColor,
      this.widget,
      this.text,
      this.onTap,
      this.enabled = true, this.borderColor})
      : super(key: key);

  final String? text;
  final VoidCallback? onTap;
  final double? height;
  final Color? textColor, borderColor, backgroundColor;
  final bool? enabled;
  final Widget? widget;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: enabled ?? false ? onTap : () {},
      child: Container(
        height: height ?? 55,
        decoration: BoxDecoration(
          color: backgroundColor ??
              (enabled ?? false
                  ? SquareColors.appBlue
                  : SquareColors.disabled),
          border: Border.all(
              color: borderColor ??
                  (enabled ?? false
                      ? SquareColors.appBlue
                      : SquareColors.disabled)),
          borderRadius: BorderRadius.circular(height ?? 8),
        ),
        child: widget ??
            Center(
              child: Text(
                text ?? "Continue",
                style: appTextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: textColor ?? (enabled ??false ? SquareColors.appBlue: Color(0xffC4C4C4))),
              ),
            ),
      ),
    );
  }
} 