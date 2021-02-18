import 'package:flutter/material.dart';

class DigiRestaurant extends StatefulWidget {
  @override
  _DigiRestaurantState createState() => _DigiRestaurantState();
}

class _DigiRestaurantState extends State<DigiRestaurant> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
       appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0), // here the desired height
        child: AppBar(
          title: Text('Digi Restaurant'),
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
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: new Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 60),
                child: new Text("Lorem Ipsum Is Simply Dummy Text of the\n Printing and type setting industry\nhas been the industry standard dummy",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: new Text(
                      '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -',
                      style: new TextStyle(
                        color: Colors.grey,
                      ),
                    ),
              ),

              Center(
                child: new Column(
                  children: <Widget>[
                    new Card(
                      child: new Container(
                        height: 50.0,
                        width: 360.0,
                        child: new Row(
                          children: <Widget>[
                            new Text(" Contoh Produk List",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),),
                            Padding(
                              padding: const EdgeInsets.only(left: 190),
                              child: new Image.asset("assets/pdf.png",
                              height: 30.0),
                            )
                          ],
                        ),
                      ),
                    ),

                      new Card(
                      child: new Container(
                        height: 50.0,
                        width: 360.0,
                        child: new Row(
                          children: <Widget>[
                            new Text(" Contoh Produk List",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),),
                            Padding(
                              padding: const EdgeInsets.only(left: 190),
                              child: new Image.asset("assets/doc.png",
                              height: 30.0),
                            )
                          ],
                        ),
                      ),
                    ),

                      new Card(
                      child: new Container(
                        height: 50.0,
                        width: 360.0,
                        child: new Row(
                          children: <Widget>[
                            new Text(" Contoh Produk List",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),),
                            Padding(
                              padding: const EdgeInsets.only(left: 190),
                              child: new Image.asset("assets/doc.png",
                              height: 30.0),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}