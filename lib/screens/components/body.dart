import 'package:flutter/material.dart';

import '../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(kDefaultPadding),
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
            vertical: kDefaultPadding / 4,
          ),
          decoration: BoxDecoration(color: Colors.white.withOpacity(10)),
          child: TextField(),
        ),
      ],
    );
  }
}
