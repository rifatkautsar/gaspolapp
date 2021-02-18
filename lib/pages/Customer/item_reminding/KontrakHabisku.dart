import 'package:flutter/material.dart';

class KontrakHabisku extends StatefulWidget {
  @override
  _KontrakHabiskuState createState() => _KontrakHabiskuState();
}

class _KontrakHabiskuState extends State<KontrakHabisku> {
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
            height: 160.0,
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 5),
                child: new Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 100),
                      child: new Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 70),
                            child: new Text(
                        'PT.UNA DARMA INDONESIA',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                        ),
                      ),
                          ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3, right: 150),
                        child: new Text('REG-5/ Telkom NTB', style: TextStyle(
                          fontSize: 12.0
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, right: 195),
                        child: new Text('1 bulan lagi', style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12.0,
                                )),
                      ),
                        ],
                      ),
                    ),
                  
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 2),
                      child: new Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 28, top: 20),
                            child: new Row(
                              children: <Widget>[
                                new Text('Kategori', style: TextStyle(
                                  color: Colors.grey,
                                ),),
                                new Text('            : HOTEL')
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 28, top: 5),
                            child: new Row(
                              children: <Widget>[
                                new Text('Tgl. Kontrak', style: TextStyle(
                                  color: Colors.grey,
                                )),
                                new Text('     : 25 Des 2019 - 29 Des 2021')
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 28, top: 5),
                            child: new Row(
                              children: <Widget>[
                                new Text('ABO(Rp)', style: TextStyle(
                                  color: Colors.grey,
                                )),
                                new Text(
                                  '            : Rp.440.000',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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