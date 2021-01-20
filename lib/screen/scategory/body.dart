import 'package:flutter/material.dart';
import 'package:bookstore/screen/scategory/top.dart';
import 'package:bookstore/screen/scategory/listcatebook.dart';

class CategoryBody extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TopCatBar(),
          ListCatBook(),
        ],
      ),
    );
  }
}
