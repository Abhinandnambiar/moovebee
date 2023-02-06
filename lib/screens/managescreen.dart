import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moovebe/screens/driverlistscreen.dart';

import '../widget/managescreen_raw.dart';
import 'BusSeatScreen.dart';

class ManageScreen extends StatefulWidget {
  const ManageScreen({Key? key}) : super(key: key);

  @override
  State<ManageScreen> createState() => _ManageScreenState();
}

class _ManageScreenState extends State<ManageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xff2a2a2a),
          title: SizedBox(
            height: 30,
            width: 100,
            child: SvgPicture.asset("assets/moovebee.svg"),
          ),
          centerTitle: true,
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row_managescreen(
                      topSize: 70,
                      leftSize: 20,
                      name: "Bus",
                      colur: Color(0xfffc153b),
                      subname: "Manage your bus",
                      image: Image.asset("assets/buspng.png")),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DriverListScreen()));
                    },
                    child: Row_managescreen(
                        leftSize: 23,
                        topSize: 47,
                        name: "Driver",
                        colur: Color(0xff2a2a2a),
                        subname: "Manage your driver",
                        image: Image.asset("assets/driverimage.png")),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                ),
                child: Text(
                  "21 Buses Found",
                  style: GoogleFonts.roboto(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    height: 1.2575,
                    color: Color(0xff6b6b6b),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 21,
                  itemBuilder: (BuildContext context, index) {
                    return Container(
                        margin: EdgeInsets.fromLTRB(17, 0, 17, 13),
                        padding: EdgeInsets.fromLTRB(0.5, 0.5, 19, 0.5),
                        width: double.infinity,
                        height: 74,
                        decoration: BoxDecoration(
                            //  border:  Border.all(color(color(0xffc1c1c1))),
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x56d4d4d4),
                                offset: Offset(1, 4),
                                blurRadius: 3.5,
                              )
                            ]),
                        child: Row(children: [
                          Container(
                              height: MediaQuery.of(context).size.height,
                              // margin:  EdgeInsets.fromLTRB(0, 0, 13, 1),
                              // padding:  EdgeInsets.fromLTRB(16, 14, 17, 13),
                              width: 79,
                              decoration: BoxDecoration(
                                color: Color(0xfff3f3f3),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(9),
                                  bottomLeft: Radius.circular(9),
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    child: Image.asset(
                                        "assets/svgviewer-png-output.png"),
                                    top: 25,
                                    left: 20,
                                  )
                                ],
                              )),
                          Expanded(
                            child: ListTile(
                              title: Text("KSRTC",
                                  style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5,
                                    color: Color(0xff474747),
                                  )),
                              subtitle: Text(
                                "Swift Scania P-Series",
                                style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5,
                                  color: Color(0xff474747),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 15, 0, 22),
                            width: 70,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.red),
                              ),
                              onPressed: () {
                                setState(() {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => BusSeatScreen()));
                                });
                              },
                              child: Text(
                                "Manage",
                                style: GoogleFonts.roboto(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2575,
                                  letterSpacing: -0.3,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ]));
                  },
                ),
              )
            ],
          ),
        ));
  }
}
