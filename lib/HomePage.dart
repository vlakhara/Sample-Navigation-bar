import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Vipul Lakhara',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [Icon(CupertinoIcons.settings)],
      ),
      drawer: Drawer(),
      body: Container(
        color: Colors.deepOrange,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white,
        backgroundColor: Colors.deepOrange,
        buttonBackgroundColor: Colors.white,
        height: 50,
        items: <Widget>[
          Tab(
            icon: Icon(CupertinoIcons.home),
          ),
          Tab(
            icon: Icon(CupertinoIcons.search),
          ),
          Tab(
            icon: Icon(CupertinoIcons.heart),
          ),
          Tab(
            icon: Icon(CupertinoIcons.paperplane),
          ),
          Tab(
            icon: Icon(CupertinoIcons.profile_circled),
          )
        ],
        animationDuration: Duration(milliseconds: 200),
        animationCurve: Curves.bounceInOut,
        onTap: (index) {
          setState(() {});
        },
      ),
    );
  }
}
