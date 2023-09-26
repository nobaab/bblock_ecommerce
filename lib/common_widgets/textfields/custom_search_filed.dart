import 'package:bblock_ecommerce/constants/colors.dart';
import 'package:flutter/material.dart';

class BblockSearchFiled extends StatefulWidget {
  const BblockSearchFiled({super.key});

  @override
  State<BblockSearchFiled> createState() => _BblockSearchFiledState();
}

class _BblockSearchFiledState extends State<BblockSearchFiled> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.87,
      height: MediaQuery.sizeOf(context).height * 0.055,
      child: TextFormField(
        decoration: InputDecoration(
            filled: true,
            fillColor: filledColor,
            contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
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
            hintText: "Search",
            hintStyle: TextStyle(
              color: bTextBlackColor,
            ),
            prefixIcon: Icon(
              Icons.search,
              color: searchIconColor,
            )),
      ),
    );
  }
}
