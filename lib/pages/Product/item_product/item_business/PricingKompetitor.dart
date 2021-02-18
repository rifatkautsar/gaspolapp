import 'package:flutter/material.dart';

class PricingKompetitor extends StatefulWidget {
  @override
  _PricingKompetitorState createState() => _PricingKompetitorState();
}

class _PricingKompetitorState extends State<PricingKompetitor> {
  @override
  Widget build(BuildContext context) {
    return Container(
    child: new Image.asset("assets/pricing.jpg",
    fit: BoxFit.cover,),
     
    );
  }
}