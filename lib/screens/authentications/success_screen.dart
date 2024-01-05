// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:square__me/screens/authentications/security_pin.dart';
import 'package:square__me/screens/constants/colors.dart';
import 'package:square__me/screens/text_decorations/text_decoration.dart';
import 'package:square__me/screens/widgets/app_button.dart';
import 'package:square__me/screens/widgets/app_scaffold.dart';
import 'package:flutter_svg/svg.dart';
import 'package:square__me/screens/widgets/navigations.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key, required this.page, required this.title, required this.description});

  final String title, description;
  final Widget? page;
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      bottomSheet: Container(
        color: SquareColors.white,
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 32),
        child: CustomButton(
          onTap: () {
            navigateToPage(page!);
          },
          textColor: SquareColors.white,
          text: "Okay!",
        ),
      ),
      automaticallyImplyLeading: false,
      subTitle: "",
      title: "",
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/pngs/verified.png"),
            const SizedBox(
              height: 42,
            ),
            Text(
              title,
              style: appTextStyle(
                  color: SquareColors.appBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              description,
              style: appTextStyle(
                  color: SquareColors().randColor(0xff4D4D4D),
                  fontSize: 13,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
