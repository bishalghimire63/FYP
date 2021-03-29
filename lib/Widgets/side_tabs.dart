import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        child: Padding(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage(
                    "https://www.nasa.gov/sites/default/files/thumbnails/image/nasa-logo-web-rgb.png"),
              ),
              SizedBox(height: 10.0),
              Text(
                "SastoBazar",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                "Buy with comfort.",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 10.0),
              Divider(
                color: Colors.black,
                height: 20,
                thickness: 2,
                indent: 10,
                endIndent: 10,
              ),
            ],
          ),
        ),
      ),
      SizedBox(height: 15.0),
      //button for menu
      ListTile(
        onTap: () {},
        leading: Icon(
          Icons.home,
          color: Colors.deepOrangeAccent,
        ),
        title: Text("Home"),
      ),
      ListTile(
        onTap: () {},
        leading: Icon(
          Icons.ad_units,
          color: Colors.brown,
        ),
        title: Text("My Ads"),
      ),
      ListTile(
        onTap: () {},
        leading: Icon(
          Icons.settings,
          color: Colors.blue,
        ),
        title: Text("Setting"),
      ),
      ListTile(
        onTap: () {},
        leading: Icon(
          Icons.note,
          color: Colors.red,
        ),
        title: Text("Terms and Condition"),
      ),
      ListTile(
        onTap: () {},
        leading: Icon(
          Icons.rate_review,
          color: Colors.green,
        ),
        title: Text("Rate this app"),
      ),
      SizedBox(
        height: 80.0,
      ),
      Divider(
        color: Colors.black,
        height: 20,
        thickness: 2,
        indent: 10,
        endIndent: 10,
      ),
      SizedBox(height: 1.0),
      Title(color: Colors.black, child: Text("Version: 1.0"))
    ]);
  }
}
