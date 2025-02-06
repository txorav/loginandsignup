import 'package:flutter/material.dart';
import 'package:loginandsignupage/constants/colors.dart';

class SuperTextCustom extends StatelessWidget {
  Function()? ontap;
  final String text;
  SuperTextCustom({required this.text, required this.ontap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: colorSystem.PrimaryColor,
        ),
      ),
    );
  }
}
