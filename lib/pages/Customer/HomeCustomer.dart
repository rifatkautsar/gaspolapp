import 'package:flutter/material.dart';
import 'package:gaspolapp/pages/Customer/list_bc_exiting.dart';
import 'Lop.dart';
import 'Reminding.dart';
import 'Activity.dart';

class HomeCustomer extends StatefulWidget {
  @override
  _HomeCustomerState createState() => _HomeCustomerState();
}

class _HomeCustomerState extends State<HomeCustomer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0), // here the desired height
        child: AppBar(
          title: Text('Customer'),
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
                  color: Color(0xFFFB8129),
                  child: new InkWell(
                    onTap: () {
                      print("tapped");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ListBcExitingPage()),
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
                                      "LIST BC EXISTING",
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
                                      "Menu Ini Berisi Data Maping BC AM",
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
                            ),
                            child: new Column(
                              children: <Widget>[
                                new Image.asset(
                                  'assets/archive.png',
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
                  color: Color(0xFF6E1D95),
                  child: new InkWell(
                    onTap: () {
                      print("tapped");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Lop()),
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
                                        top: 30.0, left: 10.0),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 240.0),
                                      child: new Text(
                                        "LoP",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold),
                                      ),
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
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: new Text(
                                        " Menu ini berisi 2 data, data LoP AM dan data\n potensi BCI ASI",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 9.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 20.0,
                            ),
                            child: new Column(
                              children: <Widget>[
                                new Image.asset(
                                  'assets/surface1.png',
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
                  color: Color(0xFFD62242),
                  child: new InkWell(
                    onTap: () {
                      print("tapped");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Reminding()),
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
                                        top: 30.0, left: 10.0),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 160.0),
                                      child: new Text(
                                        "Reminding",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold),
                                      ),
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
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: new Text(
                                        " Menu ini berisi 2 data, data kontrak habis\n dan data piutang",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 9.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 20.0,
                            ),
                            child: new Column(
                              children: <Widget>[
                                new Image.asset(
                                  'assets/reminder.png',
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
                  color: Color(0xFF155A9A),
                  child: new InkWell(
                    onTap: () {
                      print("tapped");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Activity()),
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
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 90.0, left: 18.0, top: 30.0),
                                    child: new Text(
                                      "Activity",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 15.0,
                                ),
                                child: new Column(
                                  children: <Widget>[
                                    new Text(
                                      " Menu ini berisi 3 data, success\n story, event, dan agenda HBS",
                                      style: TextStyle(
                                          fontSize: 9.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 90.0,
                              top: 30.0,
                            ),
                            child: new Image.asset(
                              'assets/camping.png',
                              height: 90.0,
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
