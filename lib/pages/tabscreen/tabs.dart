import 'package:flutter/material.dart';
import 'package:taibe/pages/home/body.dart';
import 'package:taibe/pages/home/profile_card.dart';

import '../../utils/constant.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(Constant.APP_NAME),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.category),
                text: 'Events',
              ),
              Tab(
                icon: Icon(Icons.stars),
                text: 'Favorites',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            HomePageBody(),
            ProfileCard(), // PLACEHOLDER: TO BE REMOVED
          ],
        ),
      ),
    );
  }
}
