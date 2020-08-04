import '../../../constants.dart';
import '../components/product_image.dart';
import 'package:flutter/material.dart';

import 'color_dots.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It provide us total height & width
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          decoration: BoxDecoration(
            color: kBackgroudColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
          child: Column(
            children: <Widget>[
              ProductPoster(
                size: size,
                image: "assets/images/chair1.jpg",
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ColorDot(
                      fillColor: Color(0xFF80989A),
                      isSelected: true,
                    ),
                    ColorDot(
                      fillColor: Color(0xFFFF5200),
                    ),
                    ColorDot(
                      fillColor: kPrimaryColor,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
