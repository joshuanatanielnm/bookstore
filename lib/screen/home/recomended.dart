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
              image: "assets/img/k&b.png",
              title: "Kancil & Buaya",
              price: "Rp 50.000",
              press: () {},
            ),
            CategoryBook(
              image: "assets/img/k&b.png",
              title: "Kancil & Buaya",
              price: "Rp 55.000",
              press: () {},
            ),
          ],
        ),
        Row(
          children: <Widget>[
            CategoryBook(
              image: "assets/img/k&b.png",
              title: "Kancil & Buaya",
              price: "Rp 65.000",
              press: () {},
            ),
            CategoryBook(
              image: "assets/img/k&b.png",
              title: "Kancil & Buaya",
              price: "Rp 57.000",
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
    this.image,
    this.title,
    this.price,
    this.stok,
    this.press,
  }) : super(key: key);

  final String image, title, price;
  final int stok;
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
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Container(
            child: Image.asset(image),
          ),
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
