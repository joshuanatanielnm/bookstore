import 'package:bookstore/constants.dart';
import 'package:bookstore/screen/scategory/categoryscreen.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _Search createState() => _Search();
}

class _Search extends State<Search> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pencarian",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Container(
              margin: EdgeInsets.only(top: 13),
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Cari..",
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 15)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.search,
                      size: 25,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: GridView.count(
                  mainAxisSpacing: 50,
                  crossAxisSpacing: 20,
                  primary: false,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/img/book1.png',
                              height: 100, width: 100),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: RaisedButton(
                              onPressed: () {},
                              child: Text("Link"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/img/book1.png',
                              height: 100, width: 100),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: RaisedButton(
                              onPressed: () {},
                              child: Text("Link"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/img/book1.png',
                              height: 100, width: 100),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: RaisedButton(
                              onPressed: () {},
                              child: Text("Link"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/img/book1.png',
                              height: 100, width: 100),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: RaisedButton(
                              onPressed: () {},
                              child: Text("Link"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            )),
            Container(
              padding: EdgeInsets.only(
                left: defaultpadding * 3,
                right: defaultpadding * 3,
              ),
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.home,
                      color: WarnaItem.withOpacity(0.30),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => CatScreen()));
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      color: WarnaPrimary,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.supervised_user_circle,
                      color: WarnaItem.withOpacity(0.30),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
