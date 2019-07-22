import 'package:flutter/material.dart';

import '../../utils/constant.dart';
import '../../utils/helper_function.dart';

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
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
          trailing: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset("assets/images/me.jpeg")),
        ),
      ),
    );
  }
}
