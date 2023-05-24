import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TombolShare extends StatelessWidget {
  final Function()? tekanTombol;
  final String tekstombol;
  const TombolShare({
    super.key,
    required this.tekanTombol,
    required this.tekstombol,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50, right: 25, left: 25),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18), color: Color(0XFFA2D2FF)),
      child: TextButton(
          onPressed: tekanTombol,
          child: Text(
            tekstombol,
            style: GoogleFonts.nunito(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0XFF03265B)),
          )),
    );
  }
}
