import 'package:flutter/material.dart';

class SectionDivider extends StatelessWidget {
  final String sectionTitle;

  SectionDivider(this.sectionTitle);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 16.0, left: 16),
          child: Text(sectionTitle, style: Theme.of(context).textTheme.title),
        ),
        Container(
          padding: EdgeInsets.only(top: 16.0, right: 16),
          child: Text("see all", style: Theme.of(context).textTheme.subtitle),
        ),
      ],
    );
  }
}
