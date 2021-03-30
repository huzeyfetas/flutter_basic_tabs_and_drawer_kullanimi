import 'package:flutter/material.dart';
import 'package:tabs_bottom_nav_ve_drawer_kullanimi/screen1.dart';
import 'package:tabs_bottom_nav_ve_drawer_kullanimi/screen2.dart';
import 'package:tabs_bottom_nav_ve_drawer_kullanimi/screen3.dart';

class DrawerMain extends StatefulWidget {
  @override
  _DrawerMainState createState() => _DrawerMainState();
}

class _DrawerMainState extends State<DrawerMain> {
  var drawerScreens = [Screen1(), Screen2(), Screen3()];

  int selectedIndex = 0;
  int lastSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Kullanımı"),
      ),
      body: drawerScreens[selectedIndex],
      drawer: Drawer(
          semanticLabel: "sweet drawer",
          child: ListView(
            padding: EdgeInsets.zero,
            // EdgeInsets.zero, drawer başlığı safearea dışına sıfırlamak için

            // padding: EdgeInsets.symmetric(vertical: 30),

            children: [
              DrawerHeader(
                //padding: EdgeInsets.all(50),
                child: Text("Drawer Header"),
                decoration: BoxDecoration(color: Colors.green),
              ),
              /*  Container(
                child: Text("slm"),
              ), */
              ListTile(
                title: Text(
                  'Ekran 1',
                  style: TextStyle(
                      color: lastSelected == 0 ? Colors.red : Colors.black),
                ),
                onTap: () {
                  setState(() {
                    selectedIndex = 0;
                    lastSelected = 0;
                  });
                  //Navigator.pop(context); //drawer kapanması için
                },
              ),
              ListTile(
                title: Text(
                  'Ekran 2 ',
                  //style: TextStyle(color: Colors.pink),
                  style: TextStyle(
                      color: lastSelected == 1 ? Colors.red : Colors.black),
                ),
                onTap: () {
                  setState(() {
                    selectedIndex = 1;
                    lastSelected = 1;
                  });
                  //Navigator.pop(context); //drawer kapanması için
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.exit_to_app,
                  color: lastSelected == 2 ? Colors.red : Colors.black,
                ),
                title: Text(
                  'Ekran 3',
                  style: TextStyle(
                      color: lastSelected == 2 ? Colors.red : Colors.black),
                ),
                onTap: () {
                  setState(() {
                    selectedIndex = 2;
                    lastSelected = 2;
                  });
                  Navigator.pop(context); //drawer kapanması için
                },
              ),
            ],
          )),
      /* Center(
        child: Text("Drawer Main Screen"),
      ), */
    );
  }
}
