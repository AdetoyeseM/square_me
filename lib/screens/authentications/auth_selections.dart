import 'package:flutter/material.dart';
import 'package:square__me/screens/authentications/sign_up.dart';
import 'package:square__me/screens/constants/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:square__me/screens/widgets/app_button.dart';
import 'package:square__me/screens/widgets/navigations.dart';

class AuthSelections extends StatelessWidget {
  const AuthSelections({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SquareColors.appBlue,
      body: SafeArea(

        minimum: const EdgeInsets.only(bottom: 42, right: 17, left: 17),
         bottom: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Center(child: SvgPicture.asset("assets/images/svgs/logo.svg"))
            ,  const Spacer(), 
            
              CustomButton(
              onTap: (){
                navigateToPage(const SignUpScreen());
              },
              text: "Create an Account",
              backgroundColor: SquareColors.white,),
              const SizedBox(height: 14,),
                        const CustomButton(
              text: "I have an Account",
              textColor: SquareColors.white,
              borderColor: SquareColors.white,)
            
             ],
        ),
      ),
    );
  }
}
