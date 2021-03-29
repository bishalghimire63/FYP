import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 140.0,
      child: new Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage('assets/furnitures.jpg'),
          AssetImage('assets/car.png'),
          AssetImage('assets/phone.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 5.0,
        dotBgColor: Colors.transparent,
        showIndicator: true,
        indicatorBgPadding: 7.0,
      ),
    );
    return Container(
      child: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Search"),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [image_carousel],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(child: Text("Catogory1")),
              Center(child: Text("Catogory2")),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(child: Text("Recent ads1")),
              Center(child: Text("Recent ads2")),
            ],
          ),
        ],
      ),
    );
  }
}
