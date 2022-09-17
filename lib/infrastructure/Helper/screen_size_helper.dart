import 'package:flutter/material.dart';

class ScreenSize {
  static Size size = const Size(428, 926);
}
///Width relative to design screen width
double rTDW(double width) {
  return ScreenSize.size.width * (width / 428);
}
///Width relative to design screen height
double rTDH(double height) {
  return ScreenSize.size.height * (height / 926);
}
