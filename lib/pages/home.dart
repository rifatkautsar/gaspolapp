import 'package:flutter/material.dart';
import 'package:flutter_speedometer/flutter_speedometer.dart';
import 'Customer/HomeCustomer.dart';
import 'Product/HomeProduct.dart';
import 'Channel/HomeChannel.dart';
import 'package:gaspolapp/login_page.dart';
import 'package:gaspolapp/model/json_user.dart';
import 'package:http/http.dart' as http;


import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  final JsonUser user;

  const Home({Key key, this.user}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    Future<http.Response> fetchPost() {
  return http.get('http://192.168.1.3/gaspolAPI/login');
}
    return  Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: const SystemUiOverlayStyle(
              statusBarColor: const Color(0xFF0C1946)),
          sized: false,
          child: SafeArea(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/background.png"),
                  fit: BoxFit.cover,
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xFF0C1946),
                    const Color(0xFF0F88DF),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 15.0),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      new Column(
                        children: <Widget>[
                          new Row(
                            children: <Widget>[
                              new Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Hi',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    ' Alfon,',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Wellcome',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 135.0),
                                child: new Row(
                                  children: <Widget>[
                                    Card(
                                      color: Color(0xFFE1CD1A),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      child: Container(
                                        width: 100.0,
                                        height: 30.0,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 9.0),
                                          child: new Column(
                                            children: <Widget>[
                                              new Container(
                                                child: new Row(
                                                  children: <Widget>[
                                                    new Image.asset(
                                                      'assets/crown.png',
                                                      height: 30.0,
                                                      width: 18.0,
                                                    ),
                                                    Center(
                                                      child: new Row(
                                                        children: <Widget>[
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 5.0),
                                                            child: new Text(
                                                              '50',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 16.0,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 1.0),
                                                            child: new Text(
                                                              '/200',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                              ),
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
                                  ],
                                ),
                              ),
                            ],
                          ),
                          new Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 0.0),
                                child: new Row(
                                  children: <Widget>[
                                    Text(
                                      'to',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: Text(
                                        'Gaspol',
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          new GestureDetector(
                            onTap: () {
                              _settingModalBottomSheet(context);
                            },
                            child: Container(
                              child: Speedometer(
                                backgroundColor: Colors.transparent,
                                size: 280.0,
                                minValue: 0,
                                maxValue: 180,
                                currentValue: 0,
                                warningValue: 150,
                                displayText: 'YTD Score',
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 90.0),
                              child: new Row(
                                children: <Widget>[
                                  new Container(
                                    child: new Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 15.0),
                                          child: new Container(
                                            width: 220.0,
                                            height: 60.0,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                right: 5.0,
                                              ),
                                              child: new Card(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                ),
                                                color: Color(0xFF20A947),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 66.0),
                                                  child: new Row(
                                                    children: <Widget>[
                                                      new Text(
                                                        "MANTUL",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 18.0,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
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
                        ],
                      ),
                      new Row(
                        children: <Widget>[
                          new OutlineButton(
                            borderSide: BorderSide(color: Colors.white),
                            highlightColor:
                                Colors.white, //Replace with actual colors
                            color: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: new Container(
                              width: 160.0,
                              height: 70.0,
                              child: new Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: new Image.asset(
                                      'assets/leftspeedo.png',
                                      height: 35.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8.0, left: 5.0),
                                    child: new Column(
                                      children: <Widget>[
                                        new Text('CM SCORE'),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: new Text(
                                            '40',
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              color: Color(0xFFFF2B1F),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            onPressed: () {},
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 6.0),
                            child: new OutlineButton(
                              borderSide: BorderSide(color: Colors.white),
                              highlightColor:
                                  Colors.white, //Replace with actual colors
                              color: Colors.transparent,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: new Container(
                                width: 160.0,
                                height: 70.0,
                                child: new Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: new Image.asset(
                                        'assets/gauge_green_right.png',
                                        height: 35.0,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8.0, left: 5.0),
                                      child: new Column(
                                        children: <Widget>[
                                          new Text('CM SCORE'),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: new Text(
                                              '100',
                                              style: TextStyle(
                                                fontSize: 18.0,
                                                color: Colors.green,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                      new Container(
                        child: new Row(
                          children: <Widget>[
                            new Row(
                              children: <Widget>[
                                new Card(
                                  color: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: new InkWell(
                                    onTap: () {
                                      print("tapped");
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                HomeCustomer()),
                                      );
                                    },
                                    child: new Container(
                                      width: 123.0,
                                      height: 70.0,
                                      child: new Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0, top: 15.0),
                                            child: new Image.asset(
                                              'assets/user.png',
                                              height: 25.0,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5.0, left: 5.0),
                                            child: new Text(
                                              'Customer',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                new Card(
                                  color: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: new InkWell(
                                    onTap: () {
                                      print("tapped");
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                HomeProduct()),
                                      );
                                    },
                                    child: new Container(
                                      width: 123.0,
                                      height: 70.0,
                                      child: new Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0, top: 15.0),
                                            child: new Image.asset(
                                              'assets/trolley.png',
                                              height: 25.0,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5.0, left: 5.0),
                                            child: new Text(
                                              'Products',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                new Card(
                                  color: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: new InkWell(
                                    onTap: () {
                                      print("tapped");
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                HomeChannel()),
                                      );
                                    },
                                    child: new Container(
                                      width: 123.0,
                                      height: 70.0,
                                      child: new Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0, top: 15.0),
                                            child: new Image.asset(
                                              'assets/tv.png',
                                              height: 25.0,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5.0, left: 5.0),
                                            child: new Text(
                                              'Channel',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      new Container(
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 5.0, top: 10.0),
                              child: new Text(
                                'Message',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13.0,
                                ),
                              ),
                            ),
                            new Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: new Container(
                                height: 70.0,
                                child: new Row(
                                  children: <Widget>[
                                    new Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 7.0, top: 13.0),
                                          child: new Image.asset(
                                            'assets/mr_dedi.png',
                                            height: 45.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    new Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 20.0, right: 135.0),
                                          child: new Text(
                                            'Mr Dedi',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: new Text(
                                            'Tingkatkan Lagi Performa ya..',
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    new Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 20.0, left: 25.0),
                                          child: new Text(
                                            'Senin 12.00',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12.0,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],

                    //menu baru
                  ),
                ),
              ),
            ),
          ),
        ),
      );

  }
}

class Drawhorizontalline extends CustomPainter {
  Paint _paint;

  Drawhorizontalline() {
    _paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 1
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(Offset(-100.0, 0.0), Offset(120.0, 0.0), _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Scaffold(
          body: Stack(
            children: <Widget>[
              new Column(
                children: <Widget>[
                  new Container(
                    height: 50,
                    width: 500,
                    decoration: BoxDecoration(
                      color: Color(0xFFF2F2F2),
                    ),
                    child: new Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: new Text(
                            "Perfomance",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 275),
                          child: new GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: new Image.asset("assets/delete.png",
                                height: 15.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 70,
                left: 20,
                child: new Text(
                  "Target",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                  ),
                ),
              ),
              Positioned(
                top: 95,
                left: 15,
                child: Container(
                  height: 70,
                  width: 380,
                  child: Table(
                    border: TableBorder.all(
                      width: 1.0,
                      color: Colors.grey,
                    ),
                    children: [
                      TableRow(
                        children: [
                          Text(""),
                          Text(
                            "CM",
                            style: TextStyle(fontSize: 15),
                          ),
                          Text("YTD"),
                        ],
                      ),
                      TableRow(
                        children: [
                          Text("SUSTAIN"),
                          Text("0"),
                          Text("0"),
                        ],
                      ),
                      TableRow(
                        children: [
                          Text("SCALLING"),
                          Text("0"),
                          Text("0"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 160,
                left: 20,
                child: new Text(
                  "Realisasi",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                  ),
                ),
              ),
              Positioned(
                top: 185,
                left: 15,
                child: Container(
                  height: 70,
                  width: 380,
                  child: Table(
                    border: TableBorder.all(
                      width: 1.0,
                      color: Colors.grey,
                    ),
                    children: [
                      TableRow(
                        children: [
                          Text(""),
                          Text(
                            "CM",
                            style: TextStyle(fontSize: 15),
                          ),
                          Text("YTD"),
                        ],
                      ),
                      TableRow(
                        children: [
                          Text("SUSTAIN"),
                          Text("0"),
                          Text("0"),
                        ],
                      ),
                      TableRow(
                        children: [
                          Text("SCALLING"),
                          Text("0"),
                          Text("0"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 250,
                left: 20,
                child: new Text(
                  "Achivement",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                  ),
                ),
              ),
              Positioned(
                top: 275,
                left: 15,
                child: Container(
                  height: 70,
                  width: 380,
                  child: Table(
                    border: TableBorder.all(
                      width: 1.0,
                      color: Colors.grey,
                    ),
                    children: [
                      TableRow(
                        children: [
                          Text(""),
                          Text(
                            "CM",
                            style: TextStyle(fontSize: 15),
                          ),
                          Text("YTD"),
                        ],
                      ),
                      TableRow(
                        children: [
                          Text("SUSTAIN"),
                          Text("0"),
                          Text("0"),
                        ],
                      ),
                      TableRow(
                        children: [
                          Text("SCALLING"),
                          Text("0"),
                          Text("0"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      });
}

TableRow _buildTableRow(String listOfNames) {
  return TableRow(
    children: listOfNames.split(',').map((name) {
      return Container(
        alignment: Alignment.center,
        child: Text(name, style: TextStyle(fontSize: 20.0)),
        padding: EdgeInsets.all(8.0),
      );
    }).toList(),
  );
}
