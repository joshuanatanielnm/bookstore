import 'package:flutter/material.dart';
import 'package:bookstore/constants.dart';

class TopCatBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2 + 80,
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
              margin: EdgeInsets.only(
                top: defaultpadding,
                bottom: defaultpadding,
                left: defaultpadding * 2,
                right: defaultpadding * 2,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: defaultpadding,
                vertical: defaultpadding,
              ),
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
                  Container(
                    margin: EdgeInsets.only(right: defaultpadding),
                    child: Image.asset(
                      "assets/icon/fairytale.png",
                      width: 80.0,
                    ),
                  ),
                  Container(
                    child: Text(
                      'Fairy Tales',
                      style: TextStyle(
                          color: WarnaPrimary,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
