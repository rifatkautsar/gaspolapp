import 'package:flutter/material.dart';
import 'item_product/ProdukSolusi.dart';
import 'item_product/BusinessInteligence.dart';
import 'item_product/PromoProduk.dart';

class HomeProduct extends StatefulWidget {
  @override
  _HomeProductState createState() => _HomeProductState();
}

class _HomeProductState extends State<HomeProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0), // here the desired height
        child: AppBar(
          title: Text('Product'),
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
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15.0,
            top: 10.0,
          ),
          child: Container(
            child: Column(
              children: <Widget>[
                new Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  color: Color(0xFF2484BA),
                  child: new InkWell(
                    onTap: () {
                      print("tapped");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProdukSolusi()),
                      );
                    },
                    child: new Container(
                      height: 110.0,
                      width: 380.0,
                      child: new Row(
                        children: <Widget>[
                          new Column(
                            children: <Widget>[
                              new Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 90.0, top: 30.0, left: 20.0),
                                    child: new Text(
                                      "Produk & Solusi",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              new Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      right: 78.0,
                                    ),
                                    child: new Text(
                                      " Menu Ini Berisi Data Produl dan\n Solusi HBS",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 9.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 20.0,
                              left: 30
                            ),
                            child: new Column(
                              children: <Widget>[
                                new Image.asset(
                                  'assets/packing.png',
                                  height: 90.0,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                    new Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  color: Color(0xFFB52056),
                  child: new InkWell(
                    onTap: () {
                      print("tapped");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PromoProduk()),
                      );
                    },
                    child: new Container(
                      height: 110.0,
                      width: 380.0,
                      child: new Row(
                        children: <Widget>[
                          new Column(
                            children: <Widget>[
                              new Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 130.0, top: 30.0, ),
                                    child: new Text(
                                      "Promo",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              new Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      right: 60.0,
                                      left: 20.0,
                                    ),
                                    child: new Text(
                                      "Menu Ini Berisi Data promo produk\n HBS",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 9.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 20.0,
                              left: 30
                            ),
                            child: new Column(
                              children: <Widget>[
                                new Image.asset(
                                  'assets/sale.png',
                                  height: 90.0,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                new Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  color: Color(0xFF1C9C4F),
                  child: new InkWell(
                    onTap: () {
                      print("tapped");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BusinessIntelligence()),
                      );
                    },
                    child: new Container(
                      height: 110.0,
                      width: 380.0,
                      child: new Row(
                        children: <Widget>[
                          new Column(
                            children: <Widget>[
                              new Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 80.0, top: 20.0, ),
                                    child: new Text(
                                      "Business\nIntelligence",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              new Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      right: 60.0,
                                      left: 17.0,
                                    ),
                                    child: new Text(
                                      "Menu Ini Berisi Data Business\nIntelligence",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 9.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 20.0,
                              left: 70.0
                            ),
                            child: new Column(
                              children: <Widget>[
                                new Image.asset(
                                  'assets/idea.png',
                                  height: 90.0,
                                )
                              ],
                            ),
                          ),
                        ],
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
