import 'package:flutter/material.dart';
import 'package:sneker_app_ui/constants/constants.dart';
import 'package:sneker_app_ui/data/data.dart';
import 'package:sneker_app_ui/models/sneakers.dart';
import 'package:sneker_app_ui/screens/details/details_screen.dart';

class SimilarProducts extends StatelessWidget {
  _buildSimilarProducts(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    Sneaker sneaker = similarProducts[index];

    return GestureDetector(
      onTap: () => Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (_) => DetailsScreen(sneker: sneaker))),
      child: Container(
        margin: EdgeInsets.fromLTRB(
            appPadding, appPadding / 2, appPadding, appPadding),
        width: size.width * 0.50,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: appPadding * 2, left: appPadding),
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sneaker.firstName.toUpperCase(),
                    style: TextStyle(
                      color: secondaryColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    sneaker.secondName,
                    style: TextStyle(
                      color: secondaryColor,
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.remove,
                        size: 30.0,
                        color: textColor,
                      ),
                      Text(
                        '\$${sneaker.price}',
                        style: TextStyle(
                          color: secondaryColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Image(
                image: AssetImage(sneaker.imageUrl),
                height: size.height * 0.27,
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
      height: size.height * 0.25,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: similarProducts.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildSimilarProducts(context, index);
        },
      ),
    );
  }
}
