import 'package:flutter/material.dart';
import 'package:taibe/utils/helper_function.dart';

import './pages/home/custom_appbar.dart';

import './utils/constant.dart';
import './utils//helper_function.dart';

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
      // body: buildCard(currentDate, appSlogan, context),
      body: new Column(
        children: <Widget>[
          CustomAppBar(),
         buildCard(context)],

      ),
    );
  }

  Card buildCard(BuildContext context) {
    return Card(
      elevation: 1,
      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      child: Container(
        height: 90,
        child: ListTile(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Helper.getCurrentDate,
                style: TextStyle(color: Colors.grey, fontSize: 14.0),
              ),
              Text(
                Constant.APP_SLOGAN,
                style: Theme.of(context).textTheme.title,
              )
            ],
          ),
          trailing: CircleAvatar(
            radius: 30,
            // my github profile pic
            backgroundImage: NetworkImage(
                "https://avatars1.githubusercontent.com/u/11289465?s=460&v=4"),
          ),
        ),
      ),
    );
  }
}
