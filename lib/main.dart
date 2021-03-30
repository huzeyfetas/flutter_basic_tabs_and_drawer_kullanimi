import 'package:flutter/material.dart';
import 'package:tabs_bottom_nav_ve_drawer_kullanimi/drawerMain.dart';
import 'package:tabs_bottom_nav_ve_drawer_kullanimi/bottomNavigationBarMain.dart';
import 'package:tabs_bottom_nav_ve_drawer_kullanimi/tabsMain.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabsMain(),
      //home: BottomNavigationBarMain(),
      //home: DrawerMain(),
    );
  }
}
