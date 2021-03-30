import 'package:flutter/material.dart';
import 'package:tabs_bottom_nav_ve_drawer_kullanimi/screen1.dart';
import 'package:tabs_bottom_nav_ve_drawer_kullanimi/screen2.dart';
import 'package:tabs_bottom_nav_ve_drawer_kullanimi/screen3.dart';

class BottomNavigationBarMain extends StatefulWidget {
  @override
  _BottomNavigationBarMainState createState() =>
      _BottomNavigationBarMainState();
}

class _BottomNavigationBarMainState extends State<BottomNavigationBarMain> {
  List<Widget> screens = [Screen1(), Screen2(), Screen3()];

  int selectedScreenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Bottom Bar Kullanımı"),
      ),
      body: screens[selectedScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (selIndex) {
          setState(() {
            selectedScreenIndex = selIndex;
          });
        },
        currentIndex: selectedScreenIndex,
        backgroundColor: Colors.orange,
        iconSize: 32,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.looks_one), label: "11"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_two), label: "22"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_3), label: "33"),
        ],
      ),
    );
  }
}

/* Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.orange[800],
              /* borderRadius: BorderRadius.horizontal(
              left: Radius.circular(10),
              right: Radius.circular(30),
            ), */
              borderRadius: BorderRadius.circular(4)),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              "bottom bar",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ), */
