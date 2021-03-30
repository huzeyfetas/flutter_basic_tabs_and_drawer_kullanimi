import 'package:flutter/material.dart';
import 'package:tabs_bottom_nav_ve_drawer_kullanimi/screen1.dart';
import 'package:tabs_bottom_nav_ve_drawer_kullanimi/screen2.dart';
import 'package:tabs_bottom_nav_ve_drawer_kullanimi/screen3.dart';

class TabsMain extends StatefulWidget {
  @override
  _TabsMainState createState() => _TabsMainState();
}

class _TabsMainState extends State<TabsMain> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Colors.white,
            automaticIndicatorColorAdjustment: false,
            tabs: [
              Tab(
                text: "Birinci Tab",
              ),
              Tab(
                icon: Icon(
                  Icons.looks_two_outlined,
                  color: Colors.white,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.looks_3,
                  color: Colors.yellow,
                ),
                text: "Tab-3",
                // child: Text('3.Numaralı TAB'),
              ),
            ],
          ),
          title: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("Tabs Screen"),
          ),
        ),
        body: TabBarView(
          children: [
            Screen1(),
            Screen2(),
            Screen3(),
          ],
        ),
      ),
    );
  }
}
