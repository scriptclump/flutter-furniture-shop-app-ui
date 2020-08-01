import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'components/body.dart';

// Custom import
import '../../constants.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(),
      body: Body(),
    );
  }
}

AppBar buildAppBar() {
  var iconButton = IconButton(
    icon: SvgPicture.asset('assets/icons/notification.svg'),
    onPressed: () {},
  );
  return AppBar(
    elevation: 0,
    title: Text('Dashboard'),
    centerTitle: false,
    actions: <Widget>[
      iconButton,
    ],
  );
}
