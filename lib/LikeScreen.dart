import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'HomeScreen.dart';
import 'main.dart';

class LikeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyApp(),
                ),
              );
            }),
        title: Text(
          "Like",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          Icon(
            MdiIcons.heart,
            color: Colors.white,
          ),
        ],
      ),
      body: Center(
        child: Text('Like screen '),
      ),
    );
  }
}
