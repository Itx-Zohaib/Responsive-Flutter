import 'package:flutter/material.dart';

var globalColorDark = Colors.blue.shade900;
var globalColorLight = Colors.blue.shade300;
var globalColorBackground = Colors.blue.shade200;

var myAppBar = AppBar(
  backgroundColor: globalColorDark,
);

var myDrawer = Drawer(
  backgroundColor: globalColorLight,
  child: Column(
    children: [
      DrawerHeader(
        child: Icon(
          Icons.person_2,
          color: globalColorDark,
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.dashboard_rounded,
          color: globalColorDark,
        ),
        title: const Text('D A S H B O A R D'),
      ),
      ListTile(
        leading: Icon(
          Icons.home_rounded,
          color: globalColorDark,
        ),
        title: const Text('H O M E'),
      ),
      ListTile(
        leading: Icon(
          Icons.message_rounded,
          color: globalColorDark,
        ),
        title: const Text('M E S S A G E S'),
      ),
      ListTile(
        leading: Icon(
          Icons.settings_rounded,
          color: globalColorDark,
        ),
        title: const Text('S E T T I N G S'),
      ),
    ],
  ),
);
