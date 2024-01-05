import 'package:flutter/material.dart';
import 'package:square__me/screens/authentications/success_screen.dart';
import 'package:square__me/screens/dashboard/dashboard.dart';
import 'package:square__me/screens/widgets/app_scaffold.dart';
import 'package:square__me/screens/widgets/navigations.dart';
import 'package:square__me/screens/widgets/onscreen_keyboard/number_pad.dart';
import 'package:square__me/screens/widgets/pin_code_field.dart';

class SetSecurityPin extends StatelessWidget {
  const SetSecurityPin({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController pinCodeController = TextEditingController();
    return Scaffold(
      body: AppScaffold(
        title: "Set Your Security Pin",
        subTitle: "Set a six digit PIN that you would use for all transactions",
        body: Column(
          children: [
            SquarePinCodeField(
                controller: pinCodeController,
                onCompleted: (e) {
                  navigateToPage(ConfirmSecurityPin(
                    inputtedPin: e,
                  ));
                },
                onChanged: (e) {}),
            NumberPad(
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
            ),
          ],
        ),
      ),
    );
  }
}

class ConfirmSecurityPin extends StatelessWidget {
  const ConfirmSecurityPin({super.key, this.inputtedPin});

  final String? inputtedPin;
  @override
  Widget build(BuildContext context) {
    final TextEditingController pinCodeController = TextEditingController();
    return Scaffold(
      body: AppScaffold(
        title: "Confirm Your Security Pin",
        subTitle:
            "Input again the six digit PIN that you would use for all transactions",
        body: Column(
          children: [
            SquarePinCodeField(
                controller: pinCodeController,
                onCompleted: (e) {
                  if (e != inputtedPin) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          backgroundColor: Colors.red,
                          content: Text("Pin Mistmatch")));
                  } else {
                    navigateReplaceToPage(const SuccessScreen( page: Dashboard(),
                        title: "Pin Set Successfully",
                        description:
                            "Your security pin has been set successfully."));
                  }
                },
                onChanged: (e) {}),
            NumberPad(
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
            ),
          ],
        ),
      ),
    );
  }
}
