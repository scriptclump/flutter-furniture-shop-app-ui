import 'package:first_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kBackgroudColor,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.only(
            left: kDefaultPadding,
          ),
          icon: SvgPicture.asset('assets/icons/back.svg'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: false,
        title: Text(
          'Back'.toUpperCase(),
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ),
    );
  }
}
