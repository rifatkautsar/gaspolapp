import 'package:flutter/material.dart';
class BciAsiaKu extends StatefulWidget {
  @override
  _BciAsiaKuState createState() => _BciAsiaKuState();
}

class _BciAsiaKuState extends State<BciAsiaKu> {
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
                            padding: const EdgeInsets.only(right: 58),
                            child: new Text(
                        'HOTEL BANDA ACEH (3 STARS)',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                        ),
                      ),
                          ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3, right: 50),
                        child: new Text('HOTEL (up to 150 rooms)-new-8 storey', style: TextStyle(
                          fontSize: 12.0
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, right: 165),
                        child: new Text('REG 1/Banda Aceh', style: TextStyle(
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
                                new Text('            :HOTEL')
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
                                new Text('     :25 Des 2019 - 29 Des 2021')
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 28, top: 5),
                            child: new Row(
                              children: <Widget>[
                                new Text('Value', style: TextStyle(
                                  color: Colors.grey,
                                )),
                                new Text(
                                  '                 :Rp.60.000',
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
