import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../components/search_box.dart';
import '../components/category_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provide total height & width of screen
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        children: <Widget>[
          SearchBox(),
          CategoryList(),
          SizedBox(height: kDefaultPadding / 2),
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: kBackgroudColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
