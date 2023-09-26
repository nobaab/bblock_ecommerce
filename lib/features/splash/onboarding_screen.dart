import 'package:bblock_ecommerce/common_widgets/buttons/bblock_button.dart';
import 'package:bblock_ecommerce/constants/colors.dart';
import 'package:bblock_ecommerce/features/authentication/signin/sign_in_screen.dart';
import 'package:bblock_ecommerce/features/splash/widgets/indicators.dart';
import 'package:bblock_ecommerce/features/splash/widgets/onboard_content.dart';
import 'package:flutter/material.dart';

class OnBordingScreenUI extends StatefulWidget {
  const OnBordingScreenUI({super.key});

  @override
  State<OnBordingScreenUI> createState() => _OnBordingScreenUIState();
}

class _OnBordingScreenUIState extends State<OnBordingScreenUI> {
  late PageController _pageController;
  int pageIndex = 0;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bTextWhiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
                itemCount: onBoard.length,
                onPageChanged: (index) {
                  setState(() {
                    pageIndex = index;
                  });
                },
                controller: _pageController,
                itemBuilder: (context, index) {
                  return OnBordContent(
                    svg: onBoard[index].svg,
                    title: onBoard[index].title,
                    titleOne: onBoard[index].titleOne,
                    titleTwo: onBoard[index].titleTwo,
                    titleThree: onBoard[index].titleThree,
                  );
                }),
            Positioned.fill(
              bottom: MediaQuery.of(context).size.height / 8,
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: pageIndex == onBoard.length - 1
                      ? BblockButton(
                          onPressed: () {
                            Navigator.pushNamed(context, SignInScreenUI.id);
                          },
                          label: "Get Started",
                        )
                      : Container()),
            ),
            Positioned.fill(
              bottom: MediaQuery.of(context).size.height / 20,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    onBoard.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(4),
                      child: DotIndecator(isActive: index == pageIndex),
                    ),
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
