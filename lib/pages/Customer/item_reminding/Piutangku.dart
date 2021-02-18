import 'package:flutter/material.dart';

class Piutangku extends StatefulWidget {
  @override
  _PiutangkuState createState() => _PiutangkuState();
}

class _PiutangkuState extends State<Piutangku> {
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
                            padding: const EdgeInsets.only(right: 175),
                            child: new Text(
                        'PT.TABRANI',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                        ),
                      ),
                          ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3, right: 105),
                        child: new Text('WILDAN AULIA BHASKARA', style: TextStyle(
                          fontSize: 12.0
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, right: 140),
                        child: new Text('REG 1/ PEKAN BARU', style: TextStyle(
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
                                new Text('Kolek / Legal', style: TextStyle(
                                  color: Colors.grey,
                                ),),
                                new Text('         : Meragukan / Non legal')
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 28, top: 5),
                            child: new Row(
                              children: <Widget>[
                                new Text('Invoice CM', style: TextStyle(
                                  color: Colors.grey,
                                )),
                                new Text('            : Rp.4.942.520')
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 28, top: 5),
                            child: new Row(
                              children: <Widget>[
                                new Text('Invoice(Rp)', style: TextStyle(
                                  color: Colors.grey,
                                )),
                                new Text(
                                  '            : Rp.276.887.428',
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