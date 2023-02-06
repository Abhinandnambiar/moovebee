import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'loginscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffc153b),
      body: Container(
        margin: EdgeInsets.fromLTRB(30, 340, 30, 15),
        color: Color(0xfffc153b),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: SvgPicture.asset("assets/moovebee.svg"),
            ),
            Container(
              // autogrouplnqqtMQ (YZy2eELvthjywP7J1zLNqQ)
              margin: EdgeInsets.fromLTRB(16.66, 0, 16.66, 20),
              width: 316,
              height: 58,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                      (route) => false);
                },
                child: Text(
                  "Get Started",
                  style: GoogleFonts.roboto(color: Colors.red),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
