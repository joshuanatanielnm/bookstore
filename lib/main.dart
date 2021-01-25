import 'package:bookstore/constants.dart';
import 'package:flutter/material.dart';
import 'package:bookstore/screen/home/homescreen.dart';
// import 'package:bookstore/screen/scategory/categoryscreen.dart';
import 'package:bookstore/onboardingScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BookStore',
      theme: ThemeData(
        scaffoldBackgroundColor: WarnaBG,
        primaryColor: WarnaPrimary,
      ),
      home: HomeScreen(),
      // OnboardingScreen(),
    );
  }
}
