import 'package:bblock_ecommerce/common_widgets/appbar/custom_appbar.dart';
import 'package:bblock_ecommerce/common_widgets/navbar/custom_bottom_navbar.dart';
import 'package:bblock_ecommerce/constants/colors.dart';
import 'package:bblock_ecommerce/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CartScreenUI extends StatelessWidget {
  const CartScreenUI({super.key});

  static const id = 'cart_screen_ui';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bTextWhiteColor,
      bottomNavigationBar: const CustomBottomNavigation(
        currentIndex: 2,
      ),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBar(
          title: "My Cart",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 15, 16, 0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (context, index) => const SizedBox(height: 10),
                    itemCount: 30,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(4, 6, 4, 0),
                            height: MediaQuery.sizeOf(context).height * 0.139,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: mainColor,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Quantity",
                                      style: popinsTitle.copyWith(
                                          fontSize: 14, fontWeight: FontWeight.w600, color: bTextWhiteColor),
                                    ),
                                    SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),
                                    Container(
                                      width: 20,
                                      height: 20,
                                      decoration:
                                          BoxDecoration(borderRadius: BorderRadius.circular(3), color: bTextWhiteColor),
                                      child: Center(
                                          child: Icon(
                                        Icons.remove,
                                        color: bTextBlackColor,
                                        size: 22,
                                      )),
                                    ),
                                    SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),
                                    Container(
                                      width: 20,
                                      height: 20,
                                      decoration:
                                          BoxDecoration(borderRadius: BorderRadius.circular(3), color: bTextWhiteColor),
                                      child: Center(
                                        child: Icon(
                                          Icons.add,
                                          color: bTextBlackColor,
                                          size: 22,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 1,
                            color: bTextWhiteColor,
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/phone.png",
                                  height: 91,
                                  width: 91,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "iPhone 12 Pro Max",
                                      style: popinsTitle.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Image.asset("assets/images/black_round.png"),
                                        SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),
                                        Text(
                                          "Color: ",
                                          style: popinsTitle.copyWith(
                                              fontSize: 14, fontWeight: FontWeight.w500, color: cartColor),
                                        ),
                                        Container(
                                          height: 20,
                                          width: 1,
                                          color: cartColor,
                                        ),
                                        SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),
                                        Text(
                                          "Size",
                                          style: popinsTitle.copyWith(
                                              fontSize: 14, fontWeight: FontWeight.w500, color: cartColor),
                                        ),
                                        SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),
                                        Container(
                                          height: 20,
                                          width: 1,
                                          color: cartColor,
                                        ),
                                      ],
                                    ),
                                    Text("\$2400.00",
                                        style: popinsTitle.copyWith(
                                            fontSize: 18, fontWeight: FontWeight.w600, color: mainColor)),
                                  ],
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      SvgPicture.asset("assets/svg/delete_icon.svg"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 78,
                width: MediaQuery.sizeOf(context).width * 0.91,
                decoration: BoxDecoration(
                  border: Border.all(color: bTextWhiteColor),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total",
                            style: popinsTitle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            "\$2400.00",
                            style: popinsTitle.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.08,
                        width: MediaQuery.sizeOf(context).width * 0.6,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: mainColor,
                            foregroundColor: bTextWhiteColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            "Checkout",
                            style: popinsTitle.copyWith(
                                fontSize: 16, fontWeight: FontWeight.w600), // Customize text style as needed
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
