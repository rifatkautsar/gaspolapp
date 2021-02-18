import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:gaspolapp/login_page.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Contact'),
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
          automaticallyImplyLeading: false,
          bottom: PreferredSize(
            preferredSize: Size(double.infinity, 60),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  width: 380,
                  height: 45,
                  margin: const EdgeInsets.only(bottom: 10),
                  child: SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            suffixIcon: Icon(Icons.search),
                            hintText: "Search.....",
                            hintStyle:
                                TextStyle(color: Colors.black, fontSize: 15.0)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: new SingleChildScrollView(
          child: new Container(
            child: new Column(
              children: <Widget>[
                Mycard(),
                Mycard(),
                Mycard(),
                Mycard(),
                Mycard(),
              ],
            ),
          ),
        ),
      ),
      onWillPop: () {
        _settingModalBottomSheet(context);
      },
    );
  }
}

class Mycard extends StatelessWidget {
  Mycard({this.teks, this.image});
  final String phone = 'tel:085885130840';
  final String email =
      'mailto:email@example.org?subject=News&body=New%20plugin';

  _callPhone() async {
    if (await canLaunch(phone)) {
      await launch(phone);
    } else {
      throw 'Could not Call Phone';
    }
  }

  _email() async {
    if (await canLaunch(email)) {
      await launch(email);
    } else {
      throw 'Email Tidak Di Temukan';
    }
  }

  final String teks;
  final IconData image;
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Card(
        child: new InkWell(
          onTap: () {},
          child: new Container(
            height: 90,
            child: Padding(
              padding: const EdgeInsets.only(right: 1),
              child: new Row(
                children: <Widget>[
                  new Image.asset(
                    'assets/user_circle.png',
                    height: 60.0,
                  ),
                  new Row(
                    children: <Widget>[
                      new Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15.0, left: 2.0),
                          child: Center(
                            child: new Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 7.0),
                                  child: new Text(
                                    'Dimas Edi Saputra',
                                    style: new TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: new Text(
                                    'General Manager',
                                    style: new TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: new GestureDetector(
                                    onTap: () {
                                      _callPhone();
                                    },
                                    child: new Text(
                                      '085885130840',
                                      style: new TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.blueAccent,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  new GestureDetector(
                    onTap: () {
                      _email();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 100.0),
                      child: new Container(
                        child: new Text(
                          'email@example.com',
                          style: new TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
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
                child: new Row(
                  children: <Widget>[
                    new Container(
                      width: 180,
                      height: 40,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
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
                    new Container(
                      width: 180,
                      height: 40,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        color: Colors.green,
                        onPressed: () {},
                        child: new Text(
                          "Mini",
                          style: TextStyle(
                            color: Colors.white,
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
