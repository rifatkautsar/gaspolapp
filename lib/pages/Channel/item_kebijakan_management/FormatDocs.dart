import 'package:flutter/material.dart';

class FormatDocs extends StatefulWidget {
  @override
  _FormatDocsState createState() => _FormatDocsState();
}

class _FormatDocsState extends State<FormatDocs> {
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
        padding: const EdgeInsets.only(left: 5, top: 5),
        child: new Card(
          child: Container(
            width: 400,
            height: 50.0,
            child: new Row(
              children: <Widget>[
                new Text(
                  " Lorem Ipsum Is Simply",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 210),
                  child: new Container(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: new Image.asset(
                        "assets/download.png",
                        height: 20.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
