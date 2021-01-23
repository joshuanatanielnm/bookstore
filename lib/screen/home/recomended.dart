import 'package:flutter/material.dart';
import 'package:bookstore/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RecomBook extends StatelessWidget {
  final Firestore firestore = Firestore.instance;
  @override
  Widget build(BuildContext context) {
    return Column(
      //hallooo ini coba commit
      // DIBAWAH INI DINAMIS DARI FIREBASE (Masih ERROR) SILAHKAN DIHAPUS
      // Link reference : https://medium.com/nusanet/flutter-firestore-crud-25c54c07308f
      children: <Widget>[
        StreamBuilder<QuerySnapshot>(
          stream: firestore.collection('books').snapshots(),
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Center(child: Text('errrorrr'));
            }


            return ListView.builder(
              itemCount: snapshot.data.documents.length,
              itemBuilder: (BuildContext context, int index) {
                DocumentSnapshot document = snapshot.data.documents[index];
                Map<String, dynamic> task = document.data;
                return Row(children: <Widget>[
                  CategoryBook(
                    title: "Ragil itu Buaya",
                    desc: "Ini Deskripsi Sebuah Buku",
                    price: "Rp 50.000",
                    press: () {},
                  ),
                ]);
              }
            );
          }
        )
      ]



      // DIBAWAH INI CODINGAN YANG STATICNYA DARI UCUP

      // children: <Widget>[
      //   Row(
      //     children: <Widget>[
      //       CategoryBook(
      //         title: "Ragil itu Buaya",
      //         desc: "Ini Deskripsi Sebuah Buku",
      //         price: "Rp 50.000",
      //         press: () {},
      //       ),
      //     ],
      //   ),
      //   Row(
      //     children: <Widget>[
      //       CategoryBook(
      //         title: "Kancil & Buaya",
      //         desc: "Ini Deskripsi Sebuah Buku",
      //         price: "Rp 65.000",
      //         press: () {},
      //       ),
      //     ],
      //   )
      // ],
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
