import 'package:flutter/material.dart';
import 'KebijakanManagement.dart';
import 'SkemaBisnis.dart';

class HomeChannel extends StatefulWidget {
  @override
  _HomeChannelState createState() => _HomeChannelState();
}

class _HomeChannelState extends State<HomeChannel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0), // here the desired height
        child: AppBar(
          title: Text('Channel'),
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
                  color: Color(0xFF072B40),
                  child: new InkWell(
                    onTap: () {
                      print("tapped");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => KebijakanManagement()),
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
                                        right: 90.0, top: 25.0, left: 20.0),
                                    child: new Text(
                                      "Kebijakan\nManagement",
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
                                      right: 50.0,
                                    ),
                                    child: new Text(
                                      " Menu Ini Berisi Data Kebijakan\n management HBS",
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
                            padding: const EdgeInsets.only(top: 20.0, left: 30),
                            child: new Column(
                              children: <Widget>[
                                new Image.asset(
                                  'assets/policy.png',
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
                  color: Color(0xFF212121),
                  child: new InkWell(
                    onTap: () {
                      print("tapped");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SkemaBisnis()),
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
                                      "Skema Bisnis",
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
                                      right: 40.0,
                                    ),
                                    child: new Text(
                                      " Menu Ini Berisi Data skema bisnis\n HBS",
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
                            padding: const EdgeInsets.only(top: 20.0, left: 30),
                            child: new Column(
                              children: <Widget>[
                                new Image.asset(
                                  'assets/network.png',
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
