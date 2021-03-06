import 'package:flutter/material.dart';
import 'item_skema_bisnis/RevenueSharing.dart';
import 'item_skema_bisnis/Patnership.dart';
import 'item_skema_bisnis/ValueAddedReseller.dart';

class SkemaBisnis extends StatefulWidget {
  @override
  _SkemaBisnisState createState() => _SkemaBisnisState();
}

class _SkemaBisnisState extends State<SkemaBisnis> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Skema Bisnis'),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context, false),
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
            automaticallyImplyLeading: true,
            bottom: PreferredSize(
              preferredSize: Size(double.infinity, 120),
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
                              hintStyle: TextStyle(
                                  color: Colors.black, fontSize: 15.0)),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: TabBar(
                      tabs: <Widget>[
                        Tab(
                          child: Text(
                            'Revenue Sharing',
                            style: TextStyle(fontSize: 11.0),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Patnership',
                            style: TextStyle(fontSize: 11.0),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Value added Reseller',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 11.0),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              RevenueSharing(),
              PatnerShip(),
              ValueAddedReseller(),
            ],
          ),
        ),
      ),
    );
  }
}
