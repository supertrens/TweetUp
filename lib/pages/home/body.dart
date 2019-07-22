import 'package:flutter/material.dart';

import './hero.dart';
import './new_user_card.dart';
import './profile_card.dart';
import '../../utils/section_devider.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          ProfileCard(),
          HeroBanner(),
          SectionDivider("New Users"),
          NewUserCard(),
        ],
      ),
    );
  }
}
