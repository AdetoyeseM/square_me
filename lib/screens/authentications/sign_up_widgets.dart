import 'package:flutter/material.dart';
import 'package:square__me/screens/authentications/verify_phone.dart';
import 'package:square__me/screens/constants/colors.dart';
import 'package:square__me/screens/text_decorations/text_decoration.dart';
import 'package:square__me/screens/widgets/app_button.dart';
import 'package:square__me/screens/widgets/navigations.dart';

class SignUpField extends StatelessWidget {
  const SignUpField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            height: 55,
            padding: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              border: Border.all(color: SquareColors.white_2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset("assets/images/pngs/ngn.png"),
              const SizedBox(
                width: 4,
              ),
              const Text("+234"),
              const SizedBox(
                width: 4,
              ),
              const RotatedBox(
                  quarterTurns: -9, child: Icon(Icons.chevron_left_rounded))
            ]),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
            flex: 4,
            child: TextFormField(
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(16), hintText: "Phone Number"),
            )),
      ],
    );
  }
}

class ReferralCard extends StatelessWidget {
  const ReferralCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: SquareColors.white_2),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Have a referral ID?",
            style: appTextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: SquareColors.appPurple),
          ),
          Icon(
            Icons.redeem,
            color: SquareColors.appPurple,
            size: 20,
          )
        ],
      ),
    );
  }
}

class SignUpButtons extends StatelessWidget {
  const SignUpButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: kBottomNavigationBarHeight * 3,
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 32),
      child: Column(
        children: [
          CustomButton(
            textColor: SquareColors.white,
            text: "Proceed",
            onTap: () {
              navigateToPage(VerifyPhone());
            },
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: appTextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              Text(
                "Login here",
                style: appTextStyle(
                    color: SquareColors.appPurple,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              )
            ],
          )
        ],
      ),
    );
  }
}
