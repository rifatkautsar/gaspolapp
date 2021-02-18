import 'package:flutter/material.dart';
import 'detailpromo.dart';

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
      body: SingleChildScrollView(
        child: Container(
          padding:
              EdgeInsets.only(top: 10.0, right: 18.0, left: 18.0, bottom: 30.0),
          child: new Column(
            children: <Widget>[
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
        padding: const EdgeInsets.only(bottom: 20.0),
        child: new Card(
          child: new InkWell(
            onTap: () {
              print("tapped");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailPromo()),
              );
            },
            child: new Column(
              children: <Widget>[
                new Container(
                  child: new Image.asset(
                    'assets/promo.png',
                    fit: BoxFit.fitHeight,
                  ),
                ),
                new Container(
                  child: new Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          top: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: new Text(
                          "Promo Cashback 30% untuk Semua Pengguna Hingga Rp.2500",
                          style: new TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                new Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Image.asset(
                        'assets/calendar_promo.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    new Text(
                      "Berlaku Hingga 15 Juni 2018",
                      style: new TextStyle(
                        fontSize: 12.0,
                      ),
                    )
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