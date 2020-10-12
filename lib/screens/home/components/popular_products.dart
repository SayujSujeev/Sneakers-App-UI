import 'package:flutter/material.dart';
import 'package:sneker_app_ui/constants/constants.dart';
import 'package:sneker_app_ui/data/data.dart';
import 'package:sneker_app_ui/models/sneakers.dart';
import 'package:sneker_app_ui/screens/details/details_screen.dart';

class PopularProducts extends StatelessWidget {
  _buildPopularProducts(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    Sneaker sneker = popularProducts[index];

    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => DetailsScreen(sneker: sneker),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: appPadding / 2),
        child: Container(
          margin: EdgeInsets.fromLTRB(
              appPadding / 2, appPadding, appPadding / 2, appPadding * 1.5),
          width: size.width * 0.60,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Row(
            children: [
              Image(
                image: AssetImage(sneker.imageUrl),
              ),
              SizedBox(
                width: size.width * 0.05,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Text(
                    sneker.firstName.toUpperCase(),
                    style: TextStyle(
                      color: secondaryColor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    sneker.secondName,
                    style: TextStyle(
                      color: secondaryColor,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.2,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: popularProducts.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildPopularProducts(context, index);
        },
      ),
    );
  }
}
