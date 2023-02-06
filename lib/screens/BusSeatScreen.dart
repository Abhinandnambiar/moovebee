import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'driverpage.dart';

class BusSeatScreen extends StatefulWidget {
  @override
  State<BusSeatScreen> createState() => _BusSeatScreenState();
}

class _BusSeatScreenState extends State<BusSeatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2a2a2a),
        title: Text(
          "KSRTC Swist Scania p- Series",
          style: GoogleFonts.roboto(color: Colors.white, fontSize: 15),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => DriverPage()));
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(15, 0, 15, 27.96),
              width: double.infinity,
              height: 160,
              decoration: BoxDecoration(
                  color: Color(0xff2a2a2a),
                  borderRadius: BorderRadius.circular(15)),
              child: Stack(
                children: [
                  Positioned(
                    child: Image.asset("assets/driverimage.png"),
                    top: 10,
                    left: 230,
                  ),
                  Positioned(
                    child: Text(
                      "Rohit Sharma",
                      style: GoogleFonts.roboto(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        height: 1.2575,
                        letterSpacing: -0.78,
                        color: Color(0xffffffff),
                      ),
                    ),
                    top: 40,
                    left: 20,
                  ),
                  Positioned(
                    child: Text(
                      "License no: PJ515196161655",
                      style: GoogleFonts.roboto(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        height: 1.2575,
                        letterSpacing: -0.3,
                        color: Color(0xffffffff),
                      ),
                    ),
                    top: 75,
                    left: 20,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(40),
              margin: EdgeInsets.fromLTRB(46, 15, 46, 0),
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Color(0xffdbdbdb)),
              ),
              child: SingleChildScrollView(
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 30,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(6)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: 90,
                        color: Colors.white,
                        child: GridView.builder(
                            itemCount: 18,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisSpacing: 8,
                                    childAspectRatio: 1.5,
                                    mainAxisSpacing: 27,
                                    crossAxisCount: 2),
                            itemBuilder: (BuildContext context, index) {
                              return Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/svgviewer-png-output we.png"),
                                      fit: BoxFit.cover,
                                    ),
                                    color: Colors.white),
                              );
                            }),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: 90,
                        color: Colors.white,
                        child: GridView.builder(
                            itemCount: 18,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisSpacing: 8,
                                    childAspectRatio: 1.5,
                                    mainAxisSpacing: 27,
                                    crossAxisCount: 2),
                            itemBuilder: (BuildContext context, index) {
                              return Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/svgviewer-png-output we.png"),
                                      fit: BoxFit.cover,
                                    ),
                                    color: Colors.white),
                              );
                            }),
                      )
                    ],
                  ),
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
