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

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);
  final Function onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
      splashColor: Colors.transparent,
      onTap: () => onPressed(),
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0xffFFBC21),
                blurRadius: 6,
              )
            ]),
        child: Material(
          shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          color: const Color(0xffFFBC21),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 18),
            child: Text(
              text,
              style: const TextStyle(
                  fontFamily: "Oswald SemiBold",
                  fontSize: 30,
                  color: Color(0XFF2D2C3A)),
            ),
          ),
        ),
      ),
    );
  }
}

class SecondaryBottomButton extends StatelessWidget {
  const SecondaryBottomButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);
  final Function onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: InkWell(
        splashColor: Colors.transparent,
        onTap: () => onPressed(),
        child: Container(
          color: const Color(0XFF2D2C3A),
          height: 70,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              text,
              style: const TextStyle(
                fontFamily: "Oswald Regular",
                fontSize: 20,
                color: Color(0XFFCFCFCF),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RegularText extends StatelessWidget {
  const RegularText({
    Key? key,
    required this.text,
    this.fontSize = 26,
    this.color = const Color(0XFFCFCFCF),
    this.textAlign = TextAlign.center,
  }) : super(key: key);
  final String text;
  final double fontSize;
  final Color color;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          fontFamily: "Oswald Regular", fontSize: fontSize, color: color),
    );
  }
}

class SemiBoldText extends StatelessWidget {
  const SemiBoldText({
    Key? key,
    required this.text,
    this.fontSize = 30,
    this.color = const Color(0XFFCFCFCF),
    this.textAlign = TextAlign.left,
    this.hasShadow = false,
  }) : super(key: key);
  final String text;
  final double fontSize;
  final Color color;
  final TextAlign textAlign;
  final bool hasShadow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          fontFamily: "Oswald SemiBold",
          fontSize: fontSize,
          color: color,
          shadows: hasShadow
              ? [
                  Shadow(
                      color: Colors.black.withOpacity(0.16),
                      blurRadius: 6,
                      offset: const Offset(0, 3)),
                ]
              : []),
    );
  }
}

class LightText extends StatelessWidget {
  const LightText({
    Key? key,
    required this.text,
    this.fontSize = 20,
    this.color = const Color(0XFFCFCFCF),
    this.textAlign = TextAlign.left,
  }) : super(key: key);
  final String text;
  final double fontSize;
  final Color color;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          fontFamily: "Oswald Light", fontSize: fontSize, color: color),
    );
  }
}
