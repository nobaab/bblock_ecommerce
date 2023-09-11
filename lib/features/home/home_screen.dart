import 'package:bblock_ecommerce/common_widgets/buttons/bblock_button.dart';
import 'package:flutter/material.dart';

class HomeScreenUI extends StatefulWidget {
  const HomeScreenUI({super.key});
  static const id = 'home_screen_ui';

  @override
  State<HomeScreenUI> createState() => _HomeScreenUiState();
}

class _HomeScreenUiState extends State<HomeScreenUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: BblockButton(
              label: 'Get Started',
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
