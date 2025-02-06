import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  final String text;
  final Color color;
  final bool isPassword;

  final TextEditingController textgetter;

  TextFieldCustom(
      {required this.textgetter,
      required this.isPassword,
      required this.color,
      required this.text,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: TextField(
        controller: textgetter,
        obscureText: isPassword,
        textAlign: TextAlign.right,
        style: TextStyle(fontWeight: FontWeight.bold),
        textDirection: TextDirection.rtl,
        enabled: true,
        autofocus: true,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          floatingLabelAlignment: FloatingLabelAlignment.start,
          floatingLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          focusColor: Colors.black,
          label: Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  text,
                  textAlign: TextAlign.right,
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ],
          ),
          hintText: '   ',
          // labelStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 2,
                color: color,
              ),
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 2,
                color: color,
              ),
              borderRadius: BorderRadius.circular(10)),
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: color.withOpacity(0.5)),
              borderRadius: BorderRadius.circular(10)),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: color,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
