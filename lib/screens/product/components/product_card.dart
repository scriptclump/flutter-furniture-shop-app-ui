import 'package:first_app/models/product.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.itemIndex,
    this.product,
  }) : super(key: key);

  final int itemIndex;
  final Product product;

  @override
  Widget build(BuildContext context) {
    // It will provide total height & width of screen
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      // color: Colors.blueAccent,
      height: 160,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // Image white backgound
          Container(
            height: 136,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: kBlueColor,
              boxShadow: [kDefaultShadow],
            ),
            child: Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
              ),
            ),
          ),
          // Product image
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 160,
              width: 200,
              child: Image.asset(
                product.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Product title & price
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: 136,
              // Total size - image width
              width: size.width - 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Spacer(),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Text(
                      product.title,
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                  // Get the space between text & button
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding * 1.5, // 30 default padding
                        vertical: kDefaultPadding / 4 // 5 top & bottom
                        ),
                    decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(22),
                        topRight: Radius.circular(22),
                      ),
                    ),
                    child: Text(
                      'INR ${product.price}',
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
