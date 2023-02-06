import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moovebe/widget/driverTextfieled.dart';

import 'managescreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
          children: [
            Container(
              color: Color(0xff2a2a2a),
              height: 240,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                    child: SvgPicture.asset("assets/redrectagle.svg"),
                    left: 40,
                    bottom: 5,
                  ),
                  Positioned(
                    child: Text(
                      "Welcome",
                      style: GoogleFonts.roboto(
                        fontSize: 41,
                        fontWeight: FontWeight.w700,
                        height: 1.2575,
                        letterSpacing: -1.23,
                        color: Color(0xffffffff),
                      ),
                    ),
                    top: 100,
                    left: 35,
                  ),
                  Positioned(
                    child: Text(
                      'Manage your Bus and Drivers',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        height: 1.2575,
                        color: Color(0xffffffff),
                      ),
                    ),
                    top: 150,
                    left: 35,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              // autogroupaakchd4 (YZyFwbgdvRGwinMJY2aaKc)
              margin: EdgeInsets.fromLTRB(0, 0, 6, 17),
              width: 321,
              height: 58,
              decoration: BoxDecoration(
                color: Color(0x192a2a2a),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFieleddriver(controls: username, entername: "username"),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              // autogroupaakchd4 (YZyFwbgdvRGwinMJY2aaKc)
              margin: EdgeInsets.fromLTRB(0, 0, 6, 17),
              width: 321,
              height: 58,
              decoration: BoxDecoration(
                color: Color(0x192a2a2a),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFieleddriver(controls: password, entername: "password"),
            ),
            Expanded(child: SizedBox()),
            Container(
              // autogroupw4xcM8N (YZy48MY6KBsqSGXeabw4XC)
              margin: EdgeInsets.fromLTRB(11, 0, 12, 40),
              width: 316,
              height: 58,
              decoration: BoxDecoration(
                color: Color(0xfffc153b),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                  onPressed: () {
                    checkLogin();
                  },
                  child: Text(
                    "Login",
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      height: 1.2575,
                      color: Color(0xffffffff),
                    ),
                  )),
            ),
          ],
        ),

    );
  }

  Future<void> checkLogin()async {
    final usernameController = username.text;
    final passwordController = password.text;
    if (usernameController.isEmpty || passwordController.isEmpty) {
      return;
    } else {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => ManageScreen()),
          (route) => false);
    }
  }
}
