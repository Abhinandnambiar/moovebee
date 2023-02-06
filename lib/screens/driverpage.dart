import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moovebe/function/diveFuction.dart';

import '../models/driverModel.dart';
import 'driverlistscreen.dart';

class DriverPage extends StatefulWidget {
  const DriverPage({Key? key}) : super(key: key);

  @override
  State<DriverPage> createState() => _DriverPageState();
}

class _DriverPageState extends State<DriverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2a2a2a),
        title: Text("Drivers",
            style: GoogleFonts.roboto(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              height: 1.125,
              color: Color(0xffffffff),
            )),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(18, 20, 22, 32),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              " ${detailsList.value.length} Drivers Found",
              style: GoogleFonts.roboto(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                height: 1.2575,
                color: Color(0xff6b6b6b),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ValueListenableBuilder(
                valueListenable: detailsList,
                builder: (BuildContext context, List<DriverDataModel> newList,
                    Widget? child) {
                  return ListView.builder(
                      itemCount: newList.length,
                      itemBuilder: (BuildContext context, index) {
                        final data = newList[index];
                        return Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 13),
                          padding: EdgeInsets.fromLTRB(1, 0, 19, 0),
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
                          child: Row(
                            children: [
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
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/driver.1.jpg"),
                                  radius: 10,
                                ),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: Text(data.name,
                                      style: GoogleFonts.roboto(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        height: 1.1,
                                        color: Color(0xff474747),
                                      )),
                                  subtitle: Text(
                                    "Licence No.${data.licensNumber}",
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
                                margin: EdgeInsets.fromLTRB(0, 22, 0, 22),
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
                                      newList.removeAt(index);
                                    });
                                  },
                                  child: Text(
                                    "Delete",
                                    style:
                                        GoogleFonts.roboto(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      });
                },
              ),
            ),
            Container(
              //padding: EdgeInsets.only(left: 15),
              margin: EdgeInsets.fromLTRB(28, 0, 3, 0),
              width: 316,
              height: 58,
              decoration: BoxDecoration(
                color: Color(0xfffc153b),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                onPressed: () {


                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DriverListScreen(
                          ) ));
                },
                child: Text(
                  "Add Driver",
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
}
