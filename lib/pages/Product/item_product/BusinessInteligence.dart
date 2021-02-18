import 'package:flutter/material.dart';
import 'package:gaspolapp/pages/Product/item_product/ContohKompetitor.dart';

class BusinessIntelligence extends StatefulWidget {
  @override
  _BusinessIntelligenceState createState() => _BusinessIntelligenceState();
}

class _BusinessIntelligenceState extends State<BusinessIntelligence> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0), // here the desired height
        child: AppBar(
          title: Text('List Kompetitor'),
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
      body: Container(
        child: new Column(
          children: <Widget>[
            new Card(
              child: new InkWell(
                onTap: () {
                  print("tapped");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContohKompetitor()),
                  );
                },
                child: Container(
                  width: 450.0,
                  height: 60.0,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 23, left: 5),
                    child: new Text("Contoh Kompetitor 1", style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ),
              ),
            ),

               new Card(
              child: new InkWell(
                onTap: () {
                  print("tapped");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContohKompetitor()),
                  );
                },
                child: Container(
                  width: 450.0,
                  height: 60.0,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 23, left: 5),
                    child: new Text("Contoh Kompetitor 2", style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ),
              ),
            ),

               new Card(
              child: new InkWell(
                onTap: () {
                  print("tapped");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContohKompetitor()),
                  );
                },
                child: Container(
                  width: 450.0,
                  height: 60.0,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 23, left: 5),
                    child: new Text("Contoh Kompetitor 3", style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
