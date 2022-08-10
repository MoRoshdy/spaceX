import 'package:flutter/material.dart';

import 'Screens/tabbar_screen.dart';

main()=>runApp(MyApp());
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: tabBarScreen(),
    );
  }
}