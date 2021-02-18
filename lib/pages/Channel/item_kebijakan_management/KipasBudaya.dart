import 'package:flutter/material.dart';
import 'DetaiImage.dart';

class KipasBudaya extends StatefulWidget {
  @override
  _KipasBudayaState createState() => _KipasBudayaState();
}

class _KipasBudayaState extends State<KipasBudaya> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: new Column(
            children: <Widget>[
              Mycard(),
              Mycard(),
              Mycard(),
              Mycard(),
            ],
          ),
        ),
      ),
    );
  }
}

class Mycard extends StatelessWidget {
  Mycard({this.teks});

  final String teks;
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 5, left: 29),
        child: new Card(
          child: new InkWell(
            onTap: () {
              print("tapped");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailImage()),
              );
            },
            child: Container(
              width: 350,
              height: 240,
              child: Center(
                child: new Column(
                  children: <Widget>[
                    new Image.asset(
                      "assets/budaya.jpg",
                      height: 240,
                      width: 350,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
