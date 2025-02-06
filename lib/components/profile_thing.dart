import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileThing extends StatelessWidget {
  final String image;

  ProfileThing({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(image),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                end: Alignment.topCenter,
                begin: Alignment.bottomCenter,
                colors: [
                  Colors.black45,
                  Colors.transparent,
                ])),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Icon(CupertinoIcons.pen,color: Colors.white,),
        ),
      ),
    );
  }
}
