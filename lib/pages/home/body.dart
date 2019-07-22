import 'package:flutter/material.dart';
import 'package:taibe/data/seed_data.dart';

import './new_user_card.dart';
import './profile_card.dart';

class HomePageBody extends StatelessWidget {
  static const users = DummyData.users;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ProfileCard(),
        Container(
          child: Text("New Users", style: Theme.of(context).textTheme.title),
        ),
        NewUserCard(users[0])
      ],
    );
  }
}
