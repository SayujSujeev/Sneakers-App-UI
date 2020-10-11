import 'package:flutter/material.dart';
import 'package:sneker_app_ui/constants/constants.dart';
import 'package:sneker_app_ui/screens/home/components/explore_products.dart';
import 'package:sneker_app_ui/screens/home/components/home_background.dart';
import 'package:sneker_app_ui/screens/home/components/popular_products.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Gradient background
        HomeBackground(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExploreProducts(),
            Padding(
              padding: EdgeInsets.only(top: appPadding * 2, left: appPadding),
              child: Text(
                'Popular Products',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            PopularProducts(),
          ],
        )
      ],
    );
  }
}
