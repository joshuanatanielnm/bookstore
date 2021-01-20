import 'package:flutter/material.dart';
import 'package:bookstore/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class RecomBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            CategoryBook(
              title: "Kancil & Buaya",
              desc: "Ini Deskripsi Sebuah Buku",
              price: "Rp 50.000",
              press: () {},
            ),
          ],
        ),
        Row(
          children: <Widget>[
            CategoryBook(
              title: "Kancil & Buaya",
              desc: "Ini Deskripsi Sebuah Buku",
              price: "Rp 65.000",
              press: () {},
            ),
          ],
        )
      ],
    );
  }
}

class CategoryBook extends StatelessWidget {
  const CategoryBook({
    Key key,
    this.title,
    this.price,
    this.desc,
    this.press,
  }) : super(key: key);

  final String desc, title;
  final String price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(8, 8),
            blurRadius: 10,
            color: WarnaItem.withOpacity(0.18),
          ),
        ],
      ),
      margin: EdgeInsets.only(
        left: defaultpadding,
        right: defaultpadding,
        bottom: defaultpadding,
      ),
      padding: EdgeInsets.only(
        top: defaultpadding * 0.5,
        left: defaultpadding,
        right: defaultpadding,
      ),
      width: 385,
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.only(
                left: defaultpadding / 20,
                bottom: defaultpadding,
                top: defaultpadding / 2,
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n",
                          style: GoogleFonts.roboto(
                            color: WarnaItem,
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "$desc\n\n",
                          style: GoogleFonts.roboto(
                            color: WarnaPrimary,
                            fontSize: 17.0,
                          ),
                        ),
                        TextSpan(
                          text: "$price",
                          style: GoogleFonts.roboto(
                            color: WarnaPrimary,
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
