import 'package:flutter/material.dart';

import './../../utils/constant.dart';


class CustomAppBar extends StatelessWidget {
  final double barHeight = 66.0;

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      padding: EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + barHeight,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFF3366FF),
            const Color(0xFF00CCFF),
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: Center(
        child: Text(Constant.APP_NAME,
            style: const TextStyle(
                color: Colors.white,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.w700,
                fontSize: 36.0)),
      ),
    );
  }
}
