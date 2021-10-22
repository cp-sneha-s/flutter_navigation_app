import 'package:flutter/material.dart';
import 'package:flutter_navigation_app/SettingScreen.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'HomeScreen.dart';
import 'LikeScreen.dart';
import 'SearchScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<MyApp> {
  int selectedIndex = 0;

  List<Widget> myWidgetList = <Widget>[
    HomeScreen(),
    SearchScreen(),
    LikeScreen(),
    SettingScreen(),
  ];

  void ontap(int index) {
    setState(() {
      selectedIndex = index;
    });
    switch (index) {
      case 1:
        {
          Navigator.pushNamed(context, 'SearchScreen');
        }
        break;
      case 2:
        {
          Navigator.pushNamed(context, 'LikeScreen');
        }
        break;
      case 3:
        {
          Navigator.pushNamed(context, 'SettingScreen');
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          leading: Icon(
            MdiIcons.home,
            color: Colors.white,
          ),
          title: Text(
            "Navigation App",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: myWidgetList.elementAt(selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 18,
          onTap: ontap,
          currentIndex: selectedIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                backgroundColor: Colors.teal,
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
              backgroundColor: Colors.teal,
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
                backgroundColor: Colors.teal,
                icon: Icon(
                  MdiIcons.heart,
                  color: Colors.white,
                ),
                label: 'Like'),
            BottomNavigationBarItem(
                backgroundColor: Colors.teal,
                icon: Icon(
                  Icons.miscellaneous_services_rounded,
                  color: Colors.white,
                ),
                label: 'Setting'),
          ],
        ),
      ),
    );
  }
}
