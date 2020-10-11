import 'package:flutter/material.dart';
import 'package:sneker_app_ui/constants/constants.dart';
import 'package:sneker_app_ui/models/sneaker.dart';
import 'package:sneker_app_ui/screens/details/components/detailed_product.dart';
import 'package:sneker_app_ui/screens/details/components/details_background.dart';
import 'package:sneker_app_ui/screens/details/components/similar_products.dart';

class DetailsBody extends StatefulWidget {

  final Sneaker sneker;

  DetailsBody(this.sneker);

  @override
  _DetailsBodyState createState() => _DetailsBodyState();
}

class _DetailsBodyState extends State<DetailsBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DetailsBackground(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailedProduct(widget.sneker),
            Padding(
              padding: EdgeInsets.only(top: appPadding, left: appPadding),
              child: Text(
                'Similar Products',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SimilarProducts(),
          ],
        )
      ],
    );
  }
}
