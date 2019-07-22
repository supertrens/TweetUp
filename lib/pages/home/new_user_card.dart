import 'package:flutter/material.dart';

class NewUserCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 24.0,
      ),
      child: Stack(
        children: <Widget>[
          planetCard,
          planetThumbnail,
        ],
      ),
    );
  }

  final planetThumbnail = new Container(
    margin: new EdgeInsets.symmetric(vertical: 16.0),
    alignment: FractionalOffset.centerLeft,
    child: Container(
      height: 92.0,
      width: 92.0,
      child: CircleAvatar(
        radius: 30,
        // Francesca linkedin profile pic
        backgroundImage: NetworkImage(
            "https://media.licdn.com/dms/image/C5603AQHQkZmOyM8qqQ/profile-displayphoto-shrink_800_800/0?e=1569456000&v=beta&t=uL4Z_q0YDLb88GWeK9IyibtLiNTpNysUQbHBpxUync4"),
      ),
    ),
  );

  final planetCard = new Container(
    height: 124.0,
    margin: new EdgeInsets.only(left: 46.0),
    decoration: new BoxDecoration(
      color: new Color(0xFF333366),
      shape: BoxShape.rectangle,
      borderRadius: new BorderRadius.circular(8.0),
      boxShadow: <BoxShadow>[
        new BoxShadow(
          color: Colors.black12,
          blurRadius: 10.0,
          offset: new Offset(0.0, 10.0),
        ),
      ],
    ),
  );
}
