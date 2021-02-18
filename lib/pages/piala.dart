import 'package:flutter/material.dart';
import 'package:gaspolapp/pages/Channel/item_kebijakan_management/DetaiImage.dart';
import 'package:gaspolapp/login_page.dart';
class Piala extends StatefulWidget {
  @override
  _PialaState createState() => _PialaState();
}

class _PialaState extends State<Piala> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Achivements',
          style: TextStyle(fontSize: 15.0),
        ),
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [
                  const Color(0xFF0C1946),
                  const Color(0xFF0F88DF),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new Container(
              child: new Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: new Text(
                      "Top 10 Winner AM HBS",
                      style: new TextStyle(
                          fontSize: 12.0,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'axiforma_regular.otf'),
                    ),
                  ),
                  new Container(
                    margin: const EdgeInsets.only(left: 210.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Image.asset('assets/trophy.png', height: 20.0),
                    ),
                  ),
                ],
              ),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailImage()),
                );
              },
              child: new Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Image.asset('assets/achive.jpg'),
                ),
              ),
            ),
            new Container(
              padding: EdgeInsets.only(top: 10),
              child: new Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "Top Looser AM",
                      style: new TextStyle(
                          fontSize: 12.0,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'axiforma_regular.otf'),
                    ),
                  ),
                  new Container(
                    margin: const EdgeInsets.only(left: 280.0),
                    child: new Image.asset('assets/trophy.png', height: 20.0),
                  ),
                ],
              ),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailImage()),
                );
              },
              child: new Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Image.asset('assets/achive.jpg'),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
      onWillPop: () {
           return showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Confirm EXIT"),
                content: Text("Anda Yakin Ingin Keluar?"),
                actions: <Widget>[
                  FlatButton(
                    child: Text("YA"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPagee(),
                        ),
                      );
                    },
                  ),
                  FlatButton(
                    child: Text("NO"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            });
      },

    );
  }
}
