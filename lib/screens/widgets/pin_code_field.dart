import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:square__me/screens/constants/colors.dart';

class SquarePinCodeField extends StatelessWidget {
  const SquarePinCodeField(
      {Key? key, this.onCompleted, this.controller, required this.onChanged})
      : super(key: key);

  final void Function(String)? onCompleted;
  final TextEditingController? controller;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: PinCodeTextField(
        appContext: context,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        blinkWhenObscuring: false,
        obscureText: false,
        length: 5,
        onCompleted: onCompleted,
        onChanged: onChanged!,
        
        animationType: AnimationType.fade,
        keyboardType: TextInputType.none,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          fieldHeight: 44,
          fieldWidth: 44,
          borderWidth: 0,
          activeFillColor: SquareColors.appLightBlue,
          errorBorderColor: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          inactiveColor: SquareColors.appLightBlue,
          selectedColor: SquareColors.appLightBlue,
          inactiveFillColor:  SquareColors.appLightBlue,
          selectedFillColor: Colors.grey[100],
          activeColor: SquareColors.appLightBlue,
        ),
        animationDuration: const Duration(milliseconds: 300),
        backgroundColor: Colors.transparent,
        enableActiveFill: true,
        cursorColor: SquareColors.appLightBlue,
        textStyle: TextStyle(
          color: SquareColors.appBlack,
        ),
        controller: controller,
      ),
    );
  }
}
