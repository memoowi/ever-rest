import 'package:flutter/material.dart';

class CustomColors {
  static const Color primary = Color(0xff243b55);
  static const Color secondary = Color(0xffd9d6ec);
  static const Color accent = Color(0xffead3aa);
}

class CustomTextStyle {
  static const TextStyle primary = TextStyle(
    color: CustomColors.primary,
  );

  static const TextStyle secondary = TextStyle(
    color: CustomColors.secondary,
  );

  static const TextStyle accent = TextStyle(
    color: CustomColors.accent,
  );
}
