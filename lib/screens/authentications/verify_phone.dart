import 'dart:async';

import 'package:flutter/material.dart';
import 'package:square__me/screens/authentications/security_pin.dart';
import 'package:square__me/screens/authentications/success_screen.dart';
import 'package:square__me/screens/constants/colors.dart';
import 'package:square__me/screens/text_decorations/text_decoration.dart';
import 'package:square__me/screens/widgets/app_button.dart';
import 'package:square__me/screens/widgets/app_scaffold.dart';
import 'package:square__me/screens/widgets/navigations.dart';
import 'package:square__me/screens/widgets/pin_code_field.dart';

class VerifyPhone extends StatelessWidget {
  VerifyPhone({super.key});
  final countdown = ValueNotifier<int>(10);
  final buttonsEnabled = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    Timer.periodic(const Duration(milliseconds: 900), (e) {
      if (countdown.value > 0) {
        countdown.value -= 1;
      } else {
        e.cancel();
        buttonsEnabled.value = true;
      }
    });
    return Scaffold(
      bottomSheet: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 24),
        height: 110,
        child: Row(
          children: [
            Expanded(
              child: ValueListenableBuilder(
                  valueListenable: buttonsEnabled,
                  builder: (_, p, context) {
                    return CustomButton(
                      backgroundColor: Colors.white,
                      enabled: p,
                      text: "Call me",
                    );
                  }),
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: ValueListenableBuilder(
                  valueListenable: buttonsEnabled,
                  builder: (_, a, context) {
                    return CustomButton(
                      enabled: a,
                      textColor: SquareColors.white,
                      text: "Whatsapp",
                    );
                  }),
            )
          ],
        ),
      ),
      body: AppScaffold(
        title: "Verify Phone Number",
        subTitle:
            "Please input the five digit code that was sent to your phone number below",
        body: Column(
          children: [
            SquarePinCodeField(
                onCompleted: (e) {
                  navigateToPage( const SuccessScreen(
                    page: SetSecurityPin(),
                      title: "Verification Successful",
                      description:
                          "Your phone number has been verified successfully."));
                },
                onChanged: (e) {}),
            const SizedBox(
              height: 20,
            ),
            ValueListenableBuilder(
                valueListenable: countdown,
                builder: (_, value, context) {
                  return Text(
                    formatTime(
                      int.parse(value.toString()),
                    ),
                    style: appTextStyle(
                        color: SquareColors.appPurple,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  );
                }),
            const SizedBox(
              height: 30,
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "Having trouble receiving SMS?",
                    style: appTextStyle(
                        color: const Color(0xff414141),
                        fontSize: 14,
                        fontWeight: FontWeight.w500)),
                TextSpan(
                    text: " Resend\n",
                    style: appTextStyle(
                        color: SquareColors.appPurple,
                        fontSize: 14,
                        fontWeight: FontWeight.w500)),
                TextSpan(
                    text: "Or try other options below",
                    style: appTextStyle(
                        color: const Color(0xff414141),
                        fontSize: 14,
                        fontWeight: FontWeight.w500))
              ]),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

String formatTime(int seconds) {
  int minutes = seconds ~/ 60;
  int remainingSeconds = seconds % 60;
  return '$minutes:${remainingSeconds.toString().padLeft(2, '0')}';
}
