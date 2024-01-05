import 'package:flutter/material.dart';
import 'package:square__me/screens/constants/colors.dart';
import 'package:intl/intl.dart';
import 'package:square__me/screens/text_decorations/text_decoration.dart';
import 'package:square__me/screens/widgets/app_button.dart';
import 'package:square__me/screens/widgets/onscreen_keyboard/number_formatter.dart';
import 'package:square__me/screens/widgets/onscreen_keyboard/number_pad.dart';
import 'package:square__me/screens/widgets/pin_code_field.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController pinCodeController = TextEditingController();
    pinCodeController.addListener(() {
      final numericText = pinCodeController.text.replaceAll(RegExp(r'[^\d]'), '');
      final formattedText =
          "₦${NumberFormat('#,###').format(int.tryParse(numericText) ?? 0)}";
      if (formattedText != pinCodeController.text) {
        pinCodeController.value = TextEditingValue(
          text: formattedText,
          selection: TextSelection.collapsed(offset: formattedText.length),
        );
      }
    });
    return Scaffold(
      backgroundColor: SquareColors.appDarkBlack,
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 32,),
            Row(
              children: [
                const Icon(
                  Icons.qr_code_scanner,
                  color: SquareColors.white,
                ),
                const Spacer(),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xff9F56D4).withOpacity(.1)),
                  child: Column(children: [
                    Text(
                      "Wallet Balance",
                      style: appTextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xffBDBDBD)),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "N5200",
                      style: appTextStyle(
                          color: SquareColors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w700),
                    ),
                  ]),
                ),
                const Spacer(),
                const Icon(
                  Icons.schedule,
                  color: SquareColors.white,
                )
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Container(
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(width: 0, color: SquareColors.appDarkBlack),
              ),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: pinCodeController,
                inputFormatters:   [CustomNumberFormatter()],
                textAlign: TextAlign.center,
                style: appTextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.w600,
                  color: SquareColors.white,
                ),
                showCursor: false,
                cursorColor: SquareColors.white,
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: SquareColors.appDarkBlack,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: SquareColors.appDarkBlack,
                      ),
                    ),
                    hintText: '₦0',
                    hintStyle: appTextStyle(
                        fontSize: 64,
                        color: SquareColors.white,
                        fontWeight: FontWeight.w400)),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            NumberPad(
              showBiometric: false,
            onChanged: (e) async {
                if (e == "biometrics") {
                } else if (e == "backspace") {
                  if (pinCodeController.text.isNotEmpty) {
                    pinCodeController.text = pinCodeController.text
                        .substring(0, pinCodeController.text.length - 1);
                  }
                } else {
                  pinCodeController.text += e;
                }
              },
              color: Colors.white,
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Expanded(
                      child: CustomButton(
                        borderColor: SquareColors().randColor(0xff6A6A6A4D),
                    textColor: SquareColors().randColor(0xff949494),
                    backgroundColor: SquareColors().randColor(0xff6A6A6A4D),
                    text: "Request",
                  )),
                  const SizedBox(
                    width: 24,
                  ),
                  Expanded(
                      child: CustomButton(
                        borderColor: SquareColors().randColor(0xff6A6A6A4D),
                    textColor: SquareColors().randColor(0xff949494),
                    backgroundColor: SquareColors().randColor(0xff6A6A6A4D),
                    text: "Send",
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
