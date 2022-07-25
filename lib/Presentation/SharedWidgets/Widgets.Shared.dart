import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: const BeveledRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      shadowColor: const Color(0xffFFBC21),
      elevation: 4,
      color: const Color(0XFF2D2C3A),
      child: SizedBox(
          height: 80,
          child: Center(child: Image.asset("assets/images/app_logo.png"))),
    );
  }
}
