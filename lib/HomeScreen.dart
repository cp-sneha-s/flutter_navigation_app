import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'LikeScreen.dart';
import 'SearchScreen.dart';
import 'SettingScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Text('Home Page'),
      ),
    );
  }
}
