import 'package:flutter/material.dart';
import 'package:sastobazar/widgets/side_tabs.dart';
import 'package:sastobazar/Pages/notification.dart';
import 'package:sastobazar/tabs/add_tab.dart';
import 'package:sastobazar/tabs/cart_tab.dart';
import 'package:sastobazar/tabs/message_tab.dart';
import 'package:sastobazar/tabs/home_tab.dart';
import 'package:sastobazar/tabs/profile_tab.dart';
import 'package:sastobazar/widgets/bottom_tabs.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _tabPageController;
  int _selectedTab = 0;

  @override
  void initState() {
    _tabPageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _tabPageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sasto bazar"),
        backgroundColor: Colors.purple,
        actions: [
          IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationPage()));
              }),
        ],
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: PageView(
              controller: _tabPageController,
              onPageChanged: (num) {
                setState(() {
                  _selectedTab = num;
                });
              },
              children: [
                HomeTab(),
                CartTab(),
                AddItemTab(),
                MessageTab(),
                ProfileTab(),
              ],
            ),
          ),
          BottomTabs(
            selectedTab: _selectedTab,
            tabPressed: (num) {
              _tabPageController.animateToPage(num,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeOutCubic);
            },
          ),
        ],
      ),
    );
  }
}
