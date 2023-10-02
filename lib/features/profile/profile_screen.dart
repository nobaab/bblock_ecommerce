// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bblock_ecommerce/common_widgets/appbar/custom_appbar.dart';
import 'package:bblock_ecommerce/common_widgets/navbar/custom_bottom_navbar.dart';
import 'package:bblock_ecommerce/constants/colors.dart';
import 'package:bblock_ecommerce/utils/styles.dart';

class ProfileScreenUI extends StatelessWidget {
  const ProfileScreenUI({super.key});
  static const id = 'profile_screen_ui';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bTextWhiteColor,
      bottomNavigationBar: const CustomBottomNavigation(
        currentIndex: 3,
      ),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBar(
          title: "Profile",
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 15, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/person.png'),
                  ),
                  Positioned(
                    bottom: -10,
                    right: -10,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: mainColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Text(
                'John Doe',
                style: popinsTitle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.05,
            ),
            CustomProfileInfo(
              onTap: () {},
              iconOne: Icons.person_2_outlined,
              title: "My Account",
              iconTwo: Icons.arrow_forward_ios_outlined,
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
            CustomProfileInfo(
              onTap: () {},
              iconOne: Icons.shopping_bag_outlined,
              title: "My Order",
              iconTwo: Icons.arrow_forward_ios_outlined,
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
            CustomProfileInfo(
              onTap: () {},
              iconOne: Icons.location_on_outlined,
              title: "My Address",
              iconTwo: Icons.arrow_forward_ios_outlined,
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
            CustomProfileInfo(
              onTap: () {},
              iconOne: Icons.credit_card_outlined,
              title: "Payment Method",
              iconTwo: Icons.arrow_forward_ios_outlined,
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
            CustomProfileInfo(
              onTap: () {},
              iconOne: Icons.favorite_border_outlined,
              title: "Wishlist",
              iconTwo: Icons.arrow_forward_ios_outlined,
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
            CustomProfileInfo(
              onTap: () {},
              iconOne: Icons.settings_outlined,
              title: "Account Settings",
              iconTwo: Icons.arrow_forward_ios_outlined,
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
            CustomProfileInfo(
              onTap: () {},
              iconOne: Icons.logout_outlined,
              title: "Log Out",
              iconTwo: Icons.arrow_forward_ios_outlined,
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomProfileInfo extends StatelessWidget {
  CustomProfileInfo({
    Key? key,
    required this.iconOne,
    required this.iconTwo,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final IconData iconOne;
  final IconData iconTwo;
  final String title;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            iconOne,
            color: iconColor,
            size: 30,
          ),
          SizedBox(width: MediaQuery.sizeOf(context).width * 0.04),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Text(
                        title,
                        style: popinsTitle.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Icon(
                        iconTwo,
                        color: iconColor,
                        size: 25,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.8,
                  child: Divider(
                    color: customDividerColor,
                    thickness: 1,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
