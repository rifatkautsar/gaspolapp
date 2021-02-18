import 'package:flutter/material.dart';
import 'package:gaspolapp/pages/Channel/item_kebijakan_management/DetaiImage.dart';

class DetailSuccessStory extends StatefulWidget {
  @override
  _DetailSuccessStoryState createState() => _DetailSuccessStoryState();
}

class _DetailSuccessStoryState extends State<DetailSuccessStory> {
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
                image: new AssetImage("assets/istock.jpg"),
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
              "Lorem Ipsum Is Simply",
              style: new TextStyle(
                  fontSize: 18.0,
                  fontStyle: FontStyle.normal,
                  fontFamily: 'axiforma_regular.otf'),
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
