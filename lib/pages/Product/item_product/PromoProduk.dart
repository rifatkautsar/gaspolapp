import 'package:flutter/material.dart';
import 'item_promo/DigiHotel.dart';
import 'item_promo/DigiRestaurant.dart';
import 'item_promo/DigiTourism.dart';
import 'item_promo/DigiConnectivity.dart';
import 'item_promo/DigiLainnya.dart';

class PromoProduk extends StatefulWidget {
  @override
  _PromoProdukState createState() => _PromoProdukState();
}

class _PromoProdukState extends State<PromoProduk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0), // here the desired height
        child: AppBar(
          title: Text('Promo Produk'),
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
          padding: const EdgeInsets.only(left: 30, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Row(
                children: <Widget>[
                  new Card(
                    child: new InkWell(
                      onTap: () {
                        print("tapped");
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DigiHotel()),
                        );
                      },
                      child: Container(
                        width: 170.0,
                        height: 100,
                        child: Center(
                          child: Center(
                            child: Column(
                              children: <Widget>[
                                new Image.asset(
                                  "assets/pin_hotel.png",
                                  height: 70.0,
                                ),
                                new Text("Digi Hotel")
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  new Card(
                    child: new InkWell(
                      onTap: () {
                        print("tapped");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DigiRestaurant()),
                        );
                      },
                      child: Container(
                        width: 170.0,
                        height: 100,
                        child: Center(
                          child: Center(
                            child: Column(
                              children: <Widget>[
                                new Image.asset(
                                  "assets/pin_resto.png",
                                  height: 70.0,
                                ),
                                new Text("Digi Restaurant")
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              new Row(
                children: <Widget>[
                  new Card(
                    child: new InkWell(
                      onTap: () {
                        print("tapped");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DigiTourism()),
                        );
                      },
                      child: Container(
                        width: 170.0,
                        height: 100,
                        child: Center(
                          child: Center(
                            child: Column(
                              children: <Widget>[
                                new Image.asset(
                                  "assets/pin_property.png",
                                  height: 70.0,
                                ),
                                new Text("Digi Tourism")
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  new Card(
                    child: new InkWell(
                      onTap: () {
                        print("tapped");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DigiConnectivity()),
                        );
                      },
                      child: Container(
                        width: 170.0,
                        height: 100,
                        child: Center(
                          child: Center(
                            child: Column(
                              children: <Widget>[
                                new Image.asset(
                                  "assets/pin_connect.png",
                                  height: 70.0,
                                ),
                                new Text("Digi Connectivity")
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              new Row(
                children: <Widget>[
                  new Card(
                    child: new InkWell(
                      onTap: () {
                        print("tapped");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DigiLainnya()),
                        );
                      },
                      child: Container(
                        width: 170.0,
                        height: 100,
                        child: Center(
                          child: Center(
                            child: Column(
                              children: <Widget>[
                                new Image.asset(
                                  "assets/pin_lainnya.png",
                                  height: 70.0,
                                ),
                                new Text("Digi Lainnya")
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
