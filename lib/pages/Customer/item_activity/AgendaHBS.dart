import 'package:flutter/material.dart';

class AgendaHBS extends StatefulWidget {
  @override
  _AgendaHBSState createState() => _AgendaHBSState();
}

class _AgendaHBSState extends State<AgendaHBS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: new Column(
            children: <Widget>[
              new Mycard(),
              new Mycard(),
              new Mycard(),
              new Mycard(),
              new Mycard(),
              new Mycard(),
         
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color(0xFF0C1946),
                      const Color(0xFF0F88DF),
                    ],
                  ),
                ),
                alignment: Alignment.center,
                child: Text("Download File",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white,
                    )),
              ),
            ),
          ],
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
        padding: const EdgeInsets.only(top: 5),
        child: new Card(
          child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: new Container(
              width: 450.0,
              height: 50.0,
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  child: new Row(
                    children: <Widget>[
                    new Column(
                      children: <Widget>[
                        new Text(" JPS Dengan BC Witel", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 13.0
                        ),),
                        new Text("Denpasar / Sales 1"),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child: new Container(
                        child: Align(
                          alignment: Alignment(0.0, 0.0),
                          
                          child: new Text('22 Juni 2019', style: TextStyle(
                            color: Colors.grey,
                            fontStyle: FontStyle.italic
                          ),)
                        ),
                      ),
                    ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
