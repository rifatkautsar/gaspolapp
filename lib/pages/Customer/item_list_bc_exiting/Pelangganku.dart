import 'package:flutter/material.dart';

class Pelangganku extends StatefulWidget {
  @override
  _PelanggankuState createState() => _PelanggankuState();
}

class _PelanggankuState extends State<Pelangganku> {
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
              new Mycard(),
              new Mycard(),
              new Mycard(),
              new Mycard(),
              new Mycard(),
              new Mycard(),
              new Mycard(),
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
        padding: const EdgeInsets.only(top: 3),
        child: new Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: new Container(
            width: 450.0,
            height: 60.0,
            child: new Column(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 10),
                          child: new Text('ACEH DISTRIBUTOR JAYA', style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 11.0
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: new Text('Telkom Aceh / DIV-TR1', style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.grey,
                            fontSize: 11.0
                          ),),
                        ),
                        
                      ],
                    ),
                   Padding(
                     padding: const EdgeInsets.only(left: 160, top: 20),
                     child: new Row(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: <Widget>[
                         new Text('Risma Hanyani', style: TextStyle(
                           color : Colors.grey,
                           fontSize: 10.0,
                            fontStyle: FontStyle.italic,
                         ),),
                       ],
                     ),
                   ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
