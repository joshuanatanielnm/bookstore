import 'package:flutter/material.dart';
import 'package:bookstore/botbarprof.dart';
import 'package:bookstore/topprofil.dart';
import 'package:bookstore/constants.dart';
import 'package:bookstore/screen/home/homescreen.dart';

class profil extends StatefulWidget {
  @override
  _profilState createState() => _profilState();
}

class _profilState extends State<profil> {
  Widget textfield({@required String hintText}) {
    return Material(
      elevation: 4,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            letterSpacing: 2,
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
          fillColor: Colors.white30,
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide.none),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
      body: Stack(
        children: [
          TopProfil(),
          Container(
            margin: EdgeInsets.only(left: 180, top: defaultpadding * 4),
            child: Text('RenAshBell',
                style: TextStyle(fontSize: 25, color: Colors.white)),
          ),
          Container(
            margin: EdgeInsets.only(top: defaultpadding + 40, left: 40),
            child: CircleAvatar(
              maxRadius: 65,
              backgroundImage: AssetImage('assets/img/avatar.png'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 120, left: 113),
            child: Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.black54,
                  border: Border.all(width: 1, color: Colors.white)),
              child: Icon(
                Icons.edit,
                size: 15,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: defaultpadding * 8),
            child: Container(
              height: 450,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  textfield(
                    hintText: 'Nama',
                  ),
                  textfield(
                    hintText: 'Alamat',
                  ),
                  textfield(
                    hintText: 'No. Telp',
                  ),
                  textfield(
                    hintText: 'Email',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BotProfBar(),
    );
  }
}
