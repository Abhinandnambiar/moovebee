import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class Row_managescreen extends StatelessWidget {
  String name;

  String subname;

  Color colur;
  Image image;
  double topSize;
  double leftSize;

  Row_managescreen({required this.name,
    required this.colur,
    required this.subname,
    required this.image,
  required this.leftSize,
    required this.topSize,


  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 170,
      decoration: BoxDecoration(
        color: colur,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Positioned(
            child: image,
            top: topSize,
            left: leftSize,
          ),
          Positioned(
            child: Text(
              name,
              style: GoogleFonts.roboto(
                fontSize: 26,
                fontWeight: FontWeight.w700,
                height: 1.2575,
                letterSpacing: -0.78,
                color: Color(0xffffffff),
              ),
            ),
            top: 10,
            left: 15,
          ),
          Positioned(
            child: Text(
              subname,
              style: GoogleFonts.roboto(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                height: 1.2575,
                letterSpacing: -0.3,
                color: Color(0xffffffff),
              ),
            ),
            top: 35,
            left: 15,
          )
        ],
      ),
    );
  }
}