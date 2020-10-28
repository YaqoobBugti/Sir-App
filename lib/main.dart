import 'package:ebigwin/config/config.dart';
import 'package:ebigwin/pages/app.dart';
import 'package:ebigwin/pages/register.dart';
import 'package:ebigwin/pages/discover.dart';

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      theme: Constants.darkTheme,
      darkTheme: Constants.lightTheme, 
      home: DiscoverScreen(),
    );
  }
}
