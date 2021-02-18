import 'package:flutter/material.dart';
import 'package:gaspolapp/pages/Channel/KebijakanManagement.dart';
import 'KipasBudaya.dart';

class DetailImage extends StatefulWidget {
  @override
  _DetailImageState createState() => _DetailImageState();
}

class _DetailImageState extends State<DetailImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 30,
              left: 330,
              child: new Row(
                children: <Widget>[
                  new Image.asset(
                    "assets/download.png",
                    height: 30.0,
                  ),
                  new GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: new Image.asset(
                          "assets/delete.png",
                          height: 20.0,
                        ),
                      )),
                ],
              ),
            ),
            Positioned(
              top: 260,
              left: 90,
              child: new Image.asset("assets/no_image.png"),
            ),
          ],
        ),
      ),
    );
  }
}
