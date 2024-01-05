import 'package:flutter/material.dart';
import 'package:square__me/screens/authentications/sign_up_widgets.dart';
import 'package:square__me/screens/widgets/app_scaffold.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Scaffold(
        body: AppScaffold(
          bottomSheet: SignUpButtons(),
      title: "Enter your phone number",
      subTitle: "We’ll send an SMS with a code to verify your phone number",
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            SignUpField(),
            SizedBox(
              height: 20,
            ),
            ReferralCard(), 
            
          ],
        ),
      ),
    ));
  }
}
