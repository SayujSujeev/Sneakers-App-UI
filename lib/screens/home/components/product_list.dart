import 'package:flutter/material.dart';
import 'package:sneker_app_ui/constants/constants.dart';
import 'package:sneker_app_ui/data/data.dart';
import 'package:sneker_app_ui/models/sneaker.dart';
import 'package:sneker_app_ui/screens/details/details_screen.dart';

class ProductList extends StatelessWidget {
  _buildExploreProducts(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    Sneaker sneker = exploreProducts[index];

    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => DetailsScreen(sneker: sneker),
        ),
      ),
      child: Container(
        margin: EdgeInsets.fromLTRB(
            appPadding / 2, appPadding, appPadding / 2, appPadding * 1.5),
        width: size.width * 0.50,
        decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(50.0),
            boxShadow: [
              BoxShadow(
                offset: Offset(15, 10),
                blurRadius: 20,
                color: secondaryColor.withOpacity(0.5),
              )
            ]),
        child: Padding(
          padding: EdgeInsets.only(left: appPadding, top: appPadding * 2),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sneker.firstName.toUpperCase(),
                    style: TextStyle(
                      color: secondaryColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    sneker.secondName,
                    style: TextStyle(
                      color: secondaryColor,
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.remove,size: 30.0,color: textColor,),
                      Text(
                        '\$${sneker.price}',
                        style: TextStyle(
                          color: secondaryColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Image(
                height: size.height * 0.27,
                image: AssetImage(sneker.imageUrl),
                fit: BoxFit.fitHeight,
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
      height: size.height * 0.42,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: exploreProducts.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildExploreProducts(context, index);
        },
      ),
    );
  }
}
