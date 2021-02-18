import 'package:flutter/material.dart';
import 'DetailSuccessStory.dart';

class SuccessStoryPage extends StatefulWidget {
  @override
  _SuccessStoryPageState createState() => _SuccessStoryPageState();
}

class _SuccessStoryPageState extends State<SuccessStoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
  Mycard({this.teks, this.image});

  final String teks;
  final IconData image;
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Card(
        child: new InkWell(
          onTap: () {
            print("tapped");
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailSuccessStory()),
            );
          },
          child: new Container(
            width: 450.0,
            height: 100.0,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: new Row(
                children: <Widget>[
                  new Image.asset(
                    'assets/istock.jpg',
                    height: 100,
                    width: 90,
                  ),
                  new Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 15, right: 100),
                        child: new Text(
                          'Lorem Ipsum Is Simply',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, top: 10),
                        child: new Text(
                          ' Lorem Ipsum Is Simply Dummy text of\n the printing and type setting\n indsutry . lorem ipsum has industry standard',
                          style: TextStyle(fontSize: 12),
                        ),
                      )
                    ],
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
