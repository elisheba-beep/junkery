library globals;

import 'package:flutter/material.dart';

bool darkmode = false;
Color backgroundColor() {
  Color backgroundcolor = darkmode ? const Color(0xff373759) : Colors.white;
  return backgroundcolor;
}

Color textColor() {
  Color textcolor = darkmode ? Colors.white : Colors.black;
  return textcolor;
}

Color subtextColor() {
  Color subtextcolor =
      darkmode ? const Color(0xffAFB4E0) : const Color(0xff898EBC);
  return subtextcolor;
}

String productImage() {
  String productimage = darkmode
      ? "assets/images/Burger.png"
      : "assets/images/burger-product.png";
  return productimage;
}

Color containerColor() {
  Color containercolor =
      darkmode ? const Color(0xff4E60FF) : const Color(0xffEDEEF5);
  return containercolor;
}

Color cardButtonColor() {
  Color cardbuttoncolor = darkmode ? Colors.white : const Color(0xff4E60FF);
  return cardbuttoncolor;
}
