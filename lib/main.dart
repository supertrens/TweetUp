import 'package:flutter/material.dart';

import './pages/home/custom_appbar.dart';
import './pages/home/body.dart';

import './utils/constant.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constant.APP_NAME,
      theme: buildThemeData(),
      home: MyHomePage(),
    );
  }

  ThemeData buildThemeData() {
    return ThemeData(
      primarySwatch: Colors.red,
      accentColor: Colors.amber,
      fontFamily: 'Quicksand',
      textTheme: ThemeData.light().textTheme.copyWith(
            title: TextStyle(
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.bold,
                fontSize: 22),
            button: TextStyle(color: Colors.white),
          ),
      appBarTheme: AppBarTheme(
        textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          CustomAppBar(),
          HomePageBody(),
        ],
      ),
    );
  }
}

