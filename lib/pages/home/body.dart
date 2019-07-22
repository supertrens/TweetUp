import 'package:flutter/material.dart';

import './new_user_card.dart';
import './profile_card.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ProfileCard(),
        Container(
          child: Text("New Users", style: Theme.of(context).textTheme.title),
        ),
        NewUserCard()
      ],
    );
  }
}
