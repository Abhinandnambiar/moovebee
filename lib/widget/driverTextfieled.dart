import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieleddriver extends StatelessWidget {
  String entername;

  TextEditingController controls;

  TextFieleddriver({required this.controls,required this.entername});

  @override
  Widget build(BuildContext context) {
    return TextField(

      controller: controls,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
          hintText: entername,
          hintStyle: GoogleFonts.roboto(

            fontSize: 15,
            fontWeight: FontWeight.w500,
            height: 1.2575,
            color: Color(0xff6f6f6f),
          ),
          border: InputBorder.none),
    );
  }
}
