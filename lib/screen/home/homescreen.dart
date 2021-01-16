import 'package:bookstore/constants.dart';
import 'package:flutter/material.dart';
import 'package:bookstore/screen/home/body.dart';
import 'package:bookstore/screen/home/bottomnav.dart';

class HomeScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.home,
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
      body: HomeBody(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
