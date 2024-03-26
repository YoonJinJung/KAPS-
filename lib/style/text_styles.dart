import 'package:flutter/material.dart';
import 'package:daranghae/style/color_styles.dart';

class TextStyles {
  static const headline24 = TextStyle(
      fontFamily: 'TheJamsil',
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.black);

  static const title18 =
      TextStyle(fontFamily: 'TheJamsil', fontSize: 18, color: Colors.black);

  static const content16 =
      TextStyle(fontFamily: 'TheJamsil', fontSize: 16, color: Colors.black);

  static const content12 =
      TextStyle(fontFamily: 'TheJamsil', fontSize: 12, color: Colors.black);

  static const content10 =
      TextStyle(fontFamily: 'TheJamsil', fontSize: 10, color: Colors.black);

  static const white38 = TextStyle(
      fontFamily: 'TheJamsil',
      fontSize: 38,
      fontWeight: FontWeight.w500,
      color: Colors.white);

  static const white24 =
      TextStyle(fontFamily: 'TheJamsil', fontSize: 24, color: Colors.white);

  static const mainMedium48 = TextStyle(
      fontFamily: 'TheJamsil',
      fontSize: 48,
      fontWeight: FontWeight.w500,
      color: ColorStyles.parentmain);

  static const mainBold24 = TextStyle(
      fontFamily: 'TheJamsil',
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: ColorStyles.parentmain);

  static const regular20 = TextStyle(
      fontFamily: 'TheJamsil',
      fontSize: 20,
      fontWeight: FontWeight.normal,
      color: Colors.black);

  static const grey14underline = TextStyle(
      fontFamily: 'TheJamsil',
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: Colors.grey,
      decoration: TextDecoration.underline);
}
