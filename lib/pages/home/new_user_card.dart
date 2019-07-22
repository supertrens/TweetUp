import 'package:flutter/material.dart';

import '../../providers/user.dart';
import '../../data/seed_data.dart';

class NewUserCard extends StatelessWidget {
  static const List<User> users = DummyData.users;

  @override
  Widget build(BuildContext context) {
    final baseTextStyle = const TextStyle(fontFamily: 'Poppins');
    final regularTextStyle = baseTextStyle.copyWith(
        color: Colors.white, fontSize: 9.0, fontWeight: FontWeight.bold);

    final subHeaderTextStyle = regularTextStyle.copyWith(
        color: Colors.blueAccent, fontSize: 15.0, fontWeight: FontWeight.w600);

    return Container(
      width: double.infinity,
      height: 150,
      color: Colors.black12,
      child: buildListView(subHeaderTextStyle),
    );
  }

  ListView buildListView(TextStyle subHeaderTextStyle) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: users.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (ctx, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: null, // TO BE IMPLEMENTED
            child: Hero(
              tag: users[index].name,
              child: SizedBox(
                width: 100,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: FadeInImage(
                          image: AssetImage(users[index].image),
                          fit: BoxFit.cover,
                          placeholder: AssetImage('assets/images/loading.gif'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        users[index].name,
                        style: subHeaderTextStyle,
                        // style: widget.themeData.textTheme.body2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
