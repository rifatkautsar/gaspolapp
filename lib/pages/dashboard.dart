import 'package:flutter/material.dart';
import 'package:gaspolapp/login_page.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
        ),
      ),
      onWillPop: () {
        _settingModalBottomSheet(context);
      },
    );
  }
}

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Scaffold(
          body: Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height - 50.0,
                width: double.infinity,
                child: new Column(
                  children: <Widget>[
                    new Container(
                      height: 50,
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
              ),
              Positioned(
                top: 80,
                left: 100,
                child: new Text("Apa Yang Akan Kamu Lakukan?"),
              ),
              Positioned(
                top: 130,
                left: 20,
                child: new Row(
                  children: <Widget>[
                    new Container(
                      width: 180,
                      height: 40,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.red,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPagee()),
                          );
                        },
                        child: new Text(
                          "LOGOUT",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: new Container(
                        width: 180,
                        height: 40,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          color: Colors.green,
                          onPressed: () {},
                          child: new Text(
                            "Minimize",
                            style: TextStyle(
                              color: Colors.white,
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
        );
      });
}
