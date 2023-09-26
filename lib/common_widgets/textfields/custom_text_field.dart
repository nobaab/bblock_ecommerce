import 'package:bblock_ecommerce/constants/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BblockTextFiled extends StatefulWidget {
  BblockTextFiled({super.key, required this.hintText, this.suffixIcon});

  final String? hintText;
  Widget? suffixIcon;

  @override
  State<BblockTextFiled> createState() => _BblockTextFiledState();
}

class _BblockTextFiledState extends State<BblockTextFiled> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.9,
      height: MediaQuery.sizeOf(context).height * 0.065,
      child: TextFormField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: mainColor),
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              )),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: bTextBlackColor,
          ),
          suffixIcon: widget.suffixIcon,
        ),
      ),
    );
  }
}
