import 'package:bblock_ecommerce/common_widgets/buttons/bblock_button.dart';
import 'package:bblock_ecommerce/common_widgets/textfields/custom_text_field.dart';
import 'package:bblock_ecommerce/constants/colors.dart';
import 'package:bblock_ecommerce/features/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUpScreenUI extends StatelessWidget {
  const SignUpScreenUI({super.key});
  static const id = 'sign_up_screen_ui';

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
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.04),
            BblockTextFiled(hintText: "First Name"),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
            BblockTextFiled(hintText: "Last Name"),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
            BblockTextFiled(hintText: "Email"),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
            BblockTextFiled(hintText: "Phone Number"),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
            BblockTextFiled(hintText: "Password"),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.06),
            BblockButton(
              onPressed: () {
                Navigator.pushNamed(context, HomeScreenUI.id);
              },
              label: "Create Account",
            ),
          ],
        ),
      ),
    );
  }
}
