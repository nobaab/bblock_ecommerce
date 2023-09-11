import 'package:bblock_ecommerce/constants/colors.dart';
import 'package:flutter/material.dart';

class BblockButton extends StatelessWidget {
  const BblockButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
  });

  final String label;
  final Function()? onPressed;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.06,
      width: MediaQuery.sizeOf(context).width * 0.7,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: mainColor, // Set the button background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Set rounded corner radius
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: TextStyle(
                color: bTextWhiteColor, // You can adjust the text color as needed
                fontSize: 16, // You can adjust the font size as needed
              ),
            ),
            if (icon != null) icon!,
          ],
        ),
      ),
    );
  }
}
