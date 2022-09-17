import 'package:flutter/material.dart';
import 'package:morpher_main/Infrastructure/Helper/screen_size_helper.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);
  static Size appBarSize = Size(double.maxFinite, rTDH(80));
  static PreferredSize asPreferredSize = PreferredSize(
      preferredSize: CustomAppBar.appBarSize, child: const CustomAppBar());

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
          height: rTDH(80),
          child: Center(child: Image.asset("assets/images/app_logo.png"))),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.filled = true,
  }) : super(key: key);
  final Function onPressed;
  final String text;
  final bool filled;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.all(
        Radius.circular(rTDW(20)),
      ),
      splashColor: Colors.transparent,
      onTap: () => onPressed(),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(rTDW(20)),
            ),
            boxShadow: const [
              BoxShadow(
                color: Color(0xffFFBC21),
                blurRadius: 6,
              )
            ]),
        child: Material(
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(rTDW(20)),
            ),
          ),
          color: filled ? const Color(0xffFFBC21) : const Color(0xff2D2C3A),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: rTDW(20), vertical: rTDH(20)),
            child: Text(
              text,
              style: TextStyle(
                fontFamily: "Oswald SemiBold",
                fontSize: rTDW(30),
                color:
                    filled ? const Color(0XFF2D2C3A) : const Color(0XFFCFCFCF),
              ),
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
          height: rTDH(70),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              text,
              style:  TextStyle(
                fontFamily: "Oswald Regular",
                fontSize: rTDW(20),
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
          fontFamily: "Oswald Regular", fontSize:rTDW(fontSize) , color: color),
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
          fontSize:  rTDW(fontSize),
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

class MediumText extends StatelessWidget {
  const MediumText({
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
          fontFamily: "Oswald Medium", fontSize: fontSize, color: color),
    );
  }
}
