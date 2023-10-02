// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bblock_ecommerce/constants/colors.dart';
import 'package:bblock_ecommerce/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: bTextWhiteColor,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: backButtonColor,
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
      centerTitle: true,
      title: Text(
        title!,
        style: popinsAppbar.copyWith(color: bTextBlackColor),
      ),
    );
  }
}
