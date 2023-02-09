import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helpers/colors.dart';

class Customtext extends StatelessWidget {
  String text;
  Color? color;
  FontWeight? fontweight;
  double? fs;
  Customtext(
      {Key? key, required this.text, this.color, this.fs, this.fontweight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inter(
        color: color ?? whiteText,
        fontSize: fs ?? 21,
        fontWeight: fontweight,
      ),
    );
  }
}
