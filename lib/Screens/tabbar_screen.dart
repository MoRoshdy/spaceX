import 'package:flutter/material.dart';
import 'package:spacex_project/Screens/ships_screen.dart';

import 'dragons_screen.dart';
import 'lanuches_screen.dart';

class tabBarScreen extends StatefulWidget {
  @override
  _tabBarScreenState createState() => _tabBarScreenState();
}

class _tabBarScreenState extends State<tabBarScreen> {
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'SpaceX',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
          bottom: TabBar(tabs: [
            Tab(
              child: Text('Dragons'),
            ),
            Tab(
              child: Text('Lanuches'),
            ),
            Tab(
              child: Text('Ships'),
            ),
          ]),
        ),
        backgroundColor: Colors.black,
        drawer: Drawer(),
        body: TabBarView(children: [Dragons(), Lanuches(), Ships()]),
      ),
    );
  }
}
