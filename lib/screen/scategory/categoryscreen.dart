import 'package:bookstore/constants.dart';
import 'package:bookstore/screen/scategory/body.dart';
import 'package:flutter/material.dart';
import 'package:bookstore/screen/scategory/botcatbar.dart';
import 'package:bookstore/screen/home/homescreen.dart';
// import 'package:bookstore/screen/scategory/bottomnav.dart';

class CatScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Warnatext1,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              }),
        ),
        body: CategoryBody(),
        bottomNavigationBar: BotCatBar());
  }
}
