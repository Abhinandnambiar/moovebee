import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moovebe/screens/driverpage.dart';

import '../function/diveFuction.dart';
import '../models/driverModel.dart';
import '../widget/driverTextfieled.dart';

class DriverListScreen extends StatefulWidget {
  const DriverListScreen({Key? key}) : super(key: key);

  @override
  State<DriverListScreen> createState() => _DriverListScreenState();
}

class _DriverListScreenState extends State<DriverListScreen> {
  TextEditingController drivername = TextEditingController();
  TextEditingController driverId = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2a2a2a),
        title: Text("Add Driver",
            style: GoogleFonts.roboto(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              height: 1.125,
              color: Color(0xffffffff),
            )),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(29, 39, 25, 32),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupaakchd4 (YZyFwbgdvRGwinMJY2aaKc)
              margin: EdgeInsets.fromLTRB(0, 0, 0, 17),
              width: double.infinity,
              height: 58,
              decoration: BoxDecoration(
                color: Color(0x192a2a2a),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFieleddriver(
                controls: drivername,
                entername: 'Enter Name',
              ),
            ),
            Container(
              // autogroupaakchd4 (YZyFwbgdvRGwinMJY2aaKc)
              margin: EdgeInsets.fromLTRB(0, 0, 0, 17),
              width: double.infinity,
              height: 58,
              decoration: BoxDecoration(
                color: Color(0x192a2a2a),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFieleddriver(
                controls: driverId,
                entername: 'Enter License Number',
              ),
            ),
            Expanded(
                child: SizedBox(
            )),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 3, 0),
              width: 316,
              height: 58,
              decoration: BoxDecoration(
                color: Color(0xfffc153b),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                onPressed: () {
checkDetils();
drivername.clear();
driverId.clear();

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DriverPage(
                  ) ));
                },
                child: Text(
                  "Save",
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    height: 1.2575,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  Future<void> checkDetils()async{
    final names = drivername.text;
    final id = driverId.text;
    if(names.isEmpty || id.isEmpty){
      return;
    }else{
      // print(names+id);

      final driver = DriverDataModel(licensNumber: id , name: names);
      addDriveDetiles(driver);
    }
  }
}
