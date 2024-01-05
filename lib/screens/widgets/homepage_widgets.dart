import 'package:flutter/material.dart';
import 'package:square__me/screens/constants/colors.dart';
import 'package:square__me/screens/text_decorations/text_decoration.dart';
import 'package:square__me/screens/widgets/app_button.dart';

class UserHeader extends StatelessWidget {
  const UserHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 18,
            backgroundColor: SquareColors.white,
            child: Icon(Icons.person_3_outlined),
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Helllo,",
                style: appTextStyle(
                    color: SquareColors().randColor(0xff828282),
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                "Adetoyese Matthew",
                style: appTextStyle(
                    color: SquareColors().randColor(0xff0C0C26),
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
          const Spacer(),
          CircleAvatar(
            radius: 18,
            backgroundColor: SquareColors.white,
            foregroundColor: SquareColors.white,
            child: Icon(
              Icons.qr_code_scanner,
              color: SquareColors.appBlack,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          CircleAvatar(
            radius: 18,
            backgroundColor: SquareColors.white,
            foregroundColor: SquareColors.white,
            child: Icon(
              Icons.notifications_none_outlined,
              color: SquareColors.appBlack,
            ),
          ),
        ],
      ),
    );
  }
}

class BlurredWalletBalance extends StatelessWidget {
  const BlurredWalletBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Text(
          "Wallet Balance",
          style: appTextStyle(
              color: SquareColors.appBlue,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        )),
        const SizedBox(
          height: 13,
        ),
        Center(child: Image.asset("assets/images/pngs/blurred.png"))
      ],
    );
  }
}

class FundWithdrawBTH extends StatelessWidget {
  const FundWithdrawBTH({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Expanded(
          child: CustomButton(
        textColor: Colors.white,
        text: "Fund",
      )),
      const SizedBox(
        width: 16,
      ),
      Expanded(
          child: CustomButton(
        textColor: SquareColors().randColor(0xff747474),
        borderColor: SquareColors().randColor(0xffE1E1E1),
        backgroundColor: SquareColors().randColor(0xffE1E1E1),
        text: "Withdraw",
      ))
    ]);
  }
}

class QuickAccess extends StatelessWidget {
  const QuickAccess({super.key, this.icon, this.label});

  final IconData? icon;
  final String? label;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 30),
      child: Column(
        children: [
          CircleAvatar(
            radius: 32,
            foregroundColor: SquareColors().randColor(0xffF6EFFB),
            child: Icon(
              icon,
              color: SquareColors().randColor(0xff9F56D4),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Text(
            label!,
            textAlign: TextAlign.center,
            style: appTextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: SquareColors().randColor(0xff3E3E3E)),
          )
        ],
      ),
    );
  }
}

class SectionHeaderText extends StatelessWidget {
  const SectionHeaderText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 22),
      child: Text(
        text,
        style: appTextStyle(
            color: SquareColors().randColor(0xff656565),
            fontSize: 18,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
