import 'package:flutter/material.dart';
import 'package:square__me/screens/constants/colors.dart';
import 'package:square__me/screens/text_decorations/text_decoration.dart';
import 'package:square__me/screens/widgets/app_button.dart';
import 'package:square__me/screens/widgets/homepage_widgets.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              SquareColors.appLightBlue,
              SquareColors.appLightBlue,
              SquareColors.appLightBlue,
              SquareColors.white,
            ],
          ),
        ),
        child: SafeArea(
          top: true,
          minimum: const EdgeInsets.symmetric(horizontal: 24),
          child: ListView(
            children: [
              const UserHeader(),
              const BlurredWalletBalance(),
              const SizedBox(
                height: 12,
              ),
              const FundWithdrawBTH(),
              const SizedBox(
                height: 12,
              ),
              const SectionHeaderText(text: "Quick Access"),
              const Row(
                children: [
                  QuickAccess(
                    icon: Icons.drafts,
                    label: "Pay Bills",
                  ),
                  QuickAccess(
                    icon: Icons.card_giftcard_outlined,
                    label: "Gift Cards",
                  ),
                  QuickAccess(
                    icon: Icons.credit_card,
                    label: "Cards",
                  ),
                ],
              ),
              const SizedBox(
                height: 22,
              ),
              const SectionHeaderText(text: "Recent Transactions"),
              Image.asset(
                "assets/images/pngs/note.png",
                height: 64,
              ),
              const SizedBox(
                height: 2,
              ),
              Center(
                child: Text(
                  "No recent Transactions",
                  style: appTextStyle(
                      fontSize: 17,
                      color: SquareColors().randColor(0xff4F4F4F),
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Container(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * .5),
                child: Text(
                  "You have not performed any transaction, you can start sending and requesting money from your contacts.",
                  textAlign: TextAlign.center,
                  style: appTextStyle(
                      color: SquareColors().randColor(0xff9A9A9A),
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
