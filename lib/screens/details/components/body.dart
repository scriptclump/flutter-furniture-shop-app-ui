import 'package:first_app/models/product.dart';

import '../../../constants.dart';
import '../components/product_image.dart';
import 'package:flutter/material.dart';

import 'list_of_colors.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // It provide us total height & width
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: ProductPoster(
                  size: size,
                  image: "assets/images/chair1.jpg",
                ),
              ),
              ListOfColors(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                child: Text(
                  product.title,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Text(
                'INR ${product.price}',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: kSecondaryColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                child: Text(
                  product.description,
                  style: TextStyle(color: kTextLightColor),
                ),
              ),
              SizedBox(
                height: kDefaultPadding,
              )
            ],
          ),
        ),
      ],
    );
  }
}
