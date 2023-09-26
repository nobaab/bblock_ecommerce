import 'package:bblock_ecommerce/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoard {
  final String svg;
  final String? title;
  final String? titleOne;
  final String? titleTwo;
  final String? titleThree;
  OnBoard({required this.svg, this.title, this.titleOne, this.titleTwo, this.titleThree});
}

final List<OnBoard> onBoard = [
  OnBoard(
      svg: "assets/svg/logo.svg", title: "Find and Order", titleOne: "high quality products", titleTwo: "", titleThree: ""),
  OnBoard(
      svg: "assets/svg/onboard_third_image.svg",
      title: "",
      titleOne: "",
      titleTwo: "Choose Products",
      titleThree: "Lorem ipsum is a placeholder text commsed to demonstrate the visual form o"),
  OnBoard(
      svg: "assets/svg/oboard_forth_image.svg",
      title: "",
      titleOne: "",
      titleTwo: "Get Your Orders",
      titleThree: "Lorem ipsum is a placeholder text commsed to demonstrate the visual form o"),
];

class OnBordContent extends StatelessWidget {
  const OnBordContent({
    Key? key,
    required this.svg,
    this.title,
    this.titleOne,
    this.titleTwo,
    this.titleThree,
  }) : super(key: key);

  final String svg;
  final String? title;
  final String? titleOne;
  final String? titleTwo;
  final String? titleThree;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 200,
          child: SvgPicture.asset(
            svg,
            height: MediaQuery.of(context).size.height / 2.5,
            width: MediaQuery.of(context).size.width * 0.3,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          titleTwo!,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: mainColor),
        ),
        Text(
          title!,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: bTextBlackColor,
          ),
        ),
        Text(
          titleOne!,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: bTextBlackColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Text(
            titleThree!,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: bTextBlackColor,
            ),
          ),
        )
      ],
    );
  }
}
