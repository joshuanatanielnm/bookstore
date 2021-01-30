import 'package:bookstore/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:bookstore/screen/home/viewdata.dart';

class HomeBody extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference books = firestore.collection('books');

    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: size.height * 0.2 + 10,
            child: Stack(
              children: <Widget>[
                Container(
                  height: size.height * 0.2 - 27,
                  decoration: BoxDecoration(
                    color: WarnaPrimary,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                ),
                Container(
                    height: size.height * 0.2 - 57,
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/img/BookStore.png",
                      width: 800.0,
                    )),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              bottom: defaultpadding,
              left: defaultpadding,
              right: defaultpadding,
              top: defaultpadding / 10,
            ),
            child: Text(
              'List Book',
              style: GoogleFonts.roboto(
                color: WarnaPrimary,
                fontSize: 21.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListView(
            children: [
              //// VIEW DATA HERE
              SizedBox(
                height: 150,
              )
            ],
          ),
        ],
      ),
    );
  }
}
