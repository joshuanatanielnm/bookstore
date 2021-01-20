import 'package:flutter/material.dart';
import 'package:bookstore/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bookstore/screen/scategory/categoryscreen.dart';

class CatBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          CategoryBook(
            image: "assets/icon/fairytale.png",
            title: "Fairy Tales",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CatScreen(),
                ),
              );
            },
          ),
          CategoryBook(
            image: "assets/icon/legend.png",
            title: "Legend",
            press: () {},
          ),
          CategoryBook(
            image: "assets/icon/romance.png",
            title: "Romance",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class CategoryBook extends StatelessWidget {
  const CategoryBook({
    Key key,
    this.image,
    this.title,
    this.press,
  }) : super(key: key);

  final String image, title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
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
            GestureDetector(
              onTap: press,
              child: Container(
                child: Image.asset(image),
              ),
            ),
            GestureDetector(
              onTap: press,
              child: Container(
                padding: EdgeInsets.all(defaultpadding / 2),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      text: "$title".toUpperCase(),
                      style: GoogleFonts.roboto(
                        color: WarnaPrimary,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
