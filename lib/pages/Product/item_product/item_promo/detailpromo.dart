import 'package:flutter/material.dart';
import 'package:gaspolapp/pages/Channel/item_kebijakan_management/DetaiImage.dart';

class DetailPromo extends StatefulWidget {
  @override
  _DetailPromoState createState() => _DetailPromoState();
}

class _DetailPromoState extends State<DetailPromo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new SafeArea(
          child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailImage()),
              );
            },
            child: new Container(
              constraints: new BoxConstraints.expand(
                height: 200.0,
              ),
              alignment: Alignment.topLeft,
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                image: new AssetImage("assets/promo.jpg"),
                fit: BoxFit.cover,
              )),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 10),
                child: new GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: new Image.asset(
                    "assets/left_arrows.png",
                    height: 20,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 15.0),
            child: new Text(
              "Promo Cashback 30% untuk Semua\nPengguna Hingga Rp.2500",
              style: new TextStyle(
                  fontSize: 18.0,
                  fontStyle: FontStyle.normal,
                  fontFamily: 'axiforma_regular.otf'),
            ),
          ),
          new Container(
            padding: EdgeInsets.only(top: 10),
            child: new Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 5.0, bottom: 2.0),
                  child: new Image.asset(
                    'assets/calendar_promo.png',
                    fit: BoxFit.cover,
                  ),
                ),
                new Text(
                  "Berlaku Hingga 15 Juni 2018",
                  style: new TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: new Text(
                  '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -',
                  style: new TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          new Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(top: 5.0, left: 14.0, right: 14.0),
                child: new Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
                  style: new TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}

//  class contentPromo extends StatelessWidget {
//    @override
//    Widget build(BuildContext context) {
//      return new Container(
//        child: Column(
//          children: <Widget>[

//          ],
//        ),
//      );
//    }
//  }
