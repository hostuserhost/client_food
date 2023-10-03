import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ButtonStyle cardbuttonstyle = ElevatedButton.styleFrom(
  backgroundColor: maincolor,
  textStyle: const TextStyle(color: Colors.white),
);
Color maincolor = const Color.fromRGBO(96, 93, 242, 1);

ThemeData light = ThemeData.light(useMaterial3: true)
    .copyWith(textTheme: GoogleFonts.getTextTheme('Montserrat'));

ThemeData dark = ThemeData.dark(useMaterial3: true)
    .copyWith(textTheme: GoogleFonts.getTextTheme('Montserrat'));

class ScaleSize {
  static double textScaleFactor(
    BuildContext context, {
    double maxTextScaleFactor = 2,
  }) {
    final width = MediaQuery.of(context).size.width;
    final val = (width / 1400) * maxTextScaleFactor;
    return max(1, min(val, maxTextScaleFactor));
  }
}
