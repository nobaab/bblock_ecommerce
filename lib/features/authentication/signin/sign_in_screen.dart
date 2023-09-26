import 'package:bblock_ecommerce/common_widgets/buttons/bblock_button.dart';
import 'package:bblock_ecommerce/common_widgets/textfields/custom_text_field.dart';
import 'package:bblock_ecommerce/constants/colors.dart';
import 'package:bblock_ecommerce/features/authentication/signup/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignInScreenUI extends StatelessWidget {
  static const id = 'sign_in_screen_ui';

  const SignInScreenUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bTextWhiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bTextWhiteColor,
        leading: IconButton(
          icon: SvgPicture.asset('assets/svg/back_button.svg'),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: SvgPicture.asset(
                'assets/svg/logo.svg',
                height: 130,
                width: 98,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Login to your account",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: bTextBlackColor),
            ),
            const SizedBox(height: 10),
            Text(
              "Welcome back, please enter details",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: bTextBlackColor),
            ),
            const SizedBox(height: 50),
            BblockTextFiled(hintText: "Enter Email"),
            const SizedBox(height: 20),
            BblockTextFiled(
              hintText: "Enter Password",
              suffixIcon: Icon(
                Icons.visibility_off_outlined,
                color: mainColor,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(color: mainColor),
                ),
              ),
            ),
            const SizedBox(height: 20),
            BblockButton(
              onPressed: () {
                Navigator.pushNamed(context, SignInScreenUI.id);
              },
              label: "Sign In",
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 2,
              color: mainColor,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Text("or", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: bTextBlackColor)),
            Text("Log in with", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: bTextBlackColor)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: bTextBlackColor)),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SignUpScreenUI.id);
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: mainColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
