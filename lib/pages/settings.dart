import 'package:flutter/material.dart';
import 'package:taibe/utils/constant.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 175, // TODO: Dynamically get the appbar height
            width: double.infinity,
            padding: EdgeInsets.all(25),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              Constant.APP_NAME,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: buildListTile(Icons.event_available, "Upcoming Events", () {
              Navigator.of(context).pushReplacementNamed("/");
            }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: buildListTile(Icons.event_note, "My Saved Events", () {
              // Navigator.of(context).pushReplacementNamed(FilterScreen.routeName);
            }),
          ),
        ],
      ),
    );
  }

  ListTile buildListTile(IconData icon, String title, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
            fontFamily: "RobotoCondensed",
            fontSize: 22,
            fontWeight: FontWeight.bold),
      ),
      onTap: tapHandler,
    );
  }
}
