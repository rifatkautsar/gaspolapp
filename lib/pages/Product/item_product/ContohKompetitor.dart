import 'package:flutter/material.dart';
import 'item_business/ProfilKompetitor.dart';
import 'item_business/PricingKompetitor.dart';
import 'item_business/SkemaBisnisKompetitor.dart';

class ContohKompetitor extends StatefulWidget {
  @override
  _ContohKompetitorState createState() => _ContohKompetitorState();
}

class _ContohKompetitorState extends State<ContohKompetitor> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: PreferredSize(
          preferredSize: Size.fromHeight(120.0), // here the desired height
          child: AppBar(
            bottom: TabBar(
              tabs: <Widget>[
                new Container(
                  height: 40.0,
                  child: new Text("Profil\nKompetitor"),
                ),
                new Container(
                  height: 40.0,
                  child: new Text("Pricing\nKompetitor"),
                ),
                new Container(
                  height: 40.0,
                  child: new Text('Skema Bisnis\nKompetitor'),
                ),
              ],
            ),

            automaticallyImplyLeading: true,
            title: Text('Business Intelligence'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                },
              ),
            ],
            titleSpacing: 0,
            
             leading: IconButton(icon:Icon(Icons.arrow_back),
          onPressed:() => Navigator.pop(context, false),
        ),
           
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
        body: TabBarView(
          children: <Widget>[
            ProfilKompetitor(),
            PricingKompetitor(),
            SkemaBisnis(),
           

           
          ],
        ),
        ),
      ),
    );
  }
}