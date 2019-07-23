import 'package:flutter/material.dart';

import './pages/tab_menu/tabs.dart';

import './utils/constant.dart';
import './pages/home/profile_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constant.APP_NAME,
      theme: buildThemeData(),
      home: Scaffold(body: TabsScreen()),
      routes: {
        "/events": (ctx) => ProfileCard(), // PLACEHOLDER: TO BE REMOVED
      },
      onUnknownRoute: (settings) {
        //404 page
        return MaterialPageRoute(builder: (ctx) => ProfileCard());
      },
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
            body1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            body2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
          ),
      appBarTheme: AppBarTheme(
        textTheme: ThemeData.light().textTheme.copyWith(
              title: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.w700,
                  fontSize: 36.0),
            ),
      ),
    );
  }
}
