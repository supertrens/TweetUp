import 'package:flutter/material.dart';
import 'package:taibe/pages/home/section_devider.dart';

import '../../data/seed_data.dart';
import './hero.dart';
import './new_user_card.dart';
import './profile_card.dart';

class HomePageBody extends StatelessWidget {
  static const users = DummyData.users;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          ProfileCard(),
          HeroBanner(),
          SectionDivider("New Users"),
          Expanded(
            child: buildListView(),
          ),
        ],
      ),
    );
  }

  ListView buildListView() {
    return ListView.builder(
              itemBuilder: (ctx, index) {
                return NewUserCard(users[index]);
              },
              itemCount: users.length,
              padding: EdgeInsets.symmetric(vertical: 16.0));
  }
}
