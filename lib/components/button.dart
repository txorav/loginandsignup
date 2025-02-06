import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color color;
  Function()? ontap;

  Button(
      {required this.text,
      required this.color,
      required this.ontap,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 45,
        margin: EdgeInsets.only(right: 50,left: 50),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              end: Alignment.topRight,
              begin: Alignment.bottomLeft,
              colors: [
            color.withOpacity(1),
            color.withOpacity(0.7),
          ]),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
