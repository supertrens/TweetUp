import 'package:flutter/material.dart';

import './hero.dart';
import './new_user_card.dart';
import './profile_card.dart';
import '../../utils/section_devider.dart';
import '../../data/seed_data.dart';
import '../../providers/user.dart';

class HomePageBody extends StatelessWidget {
  static const List<User> users = DummyData.users;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          ProfileCard(),
          HeroBanner(),
          SectionDivider("New Users"),
          Expanded(child: buildListView()),
        ],
      ),
    );
  }

  ListView buildListView() {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: users.length,
      padding: const EdgeInsets.all(25),
      itemBuilder: (ctx, index) {
        return NewUserCard(users[index]);
      },
    );
  }
}
