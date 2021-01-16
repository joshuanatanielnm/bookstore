import 'package:bookstore/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bookstore/screen/home/category.dart';
import 'package:bookstore/screen/home/recomended.dart';

class HomeBody extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    padding: EdgeInsets.symmetric(horizontal: defaultpadding),
                    height: 54,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(5, 8),
                          blurRadius: 20,
                          color: WarnaPrimary.withOpacity(0.2),
                        ),
                      ],
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              hintText: "Search",
                              hintStyle: TextStyle(
                                color: WarnaPrimary.withOpacity(0.5),
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.symmetric(
                horizontal: defaultpadding, vertical: defaultpadding),
            child: Text(
              'Category',
              style: GoogleFonts.roboto(
                color: WarnaPrimary,
                fontSize: 21.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          CatBook(),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              bottom: defaultpadding,
              left: defaultpadding,
              right: defaultpadding,
              top: defaultpadding,
            ),
            child: Text(
              'Recommended Book',
              style: GoogleFonts.roboto(
                color: WarnaPrimary,
                fontSize: 21.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          RecomBook(),
        ],
      ),
    );
  }
}
