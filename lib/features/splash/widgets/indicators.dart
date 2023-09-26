import 'package:bblock_ecommerce/constants/colors.dart';
import 'package:flutter/material.dart';

class DotIndecator extends StatelessWidget {
  const DotIndecator({
    Key? key,
    this.isActive = false,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: isActive ? mainColor : Colors.grey,
      ),
    );
  }
}
