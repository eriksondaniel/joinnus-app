import 'package:flutter/material.dart';
import 'package:joinnus/global.dart';
import 'package:joinnus/src/colors.dart';

import 'package:joinnus/src/ui/event_detail.dart';
import 'package:joinnus/src/ui/home.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: PROJECT,
      theme: themeData(),
      home: Home(title: PROJECT),
      routes: {
        '/eventDetail': (context) => EventDetail(),
      },
    );
  }
}
