import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:sneker_app_ui/constants/constants.dart';
import 'package:sneker_app_ui/screens/home/components/product_list.dart';

class ExploreProducts extends StatefulWidget {
  @override
  _ExploreProductsState createState() => _ExploreProductsState();
}

class _ExploreProductsState extends State<ExploreProducts> {
  List<String> menuItems = ['Sneakers', 'Slides', 'Clogs', 'Sandals','Flip-Flops'];

  int selectedMenuIndex = 0;

  Widget _buildMenuItems(int index) {
    Size size = MediaQuery.of(context).size;

    return InkWell(
      onTap: (){
        setState(() {
          selectedMenuIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.only(left: appPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  menuItems[index],
                  style: TextStyle(
                    color: selectedMenuIndex == index
                        ? textColor
                        : secondaryColor.withOpacity(0.5),
                    fontSize: selectedMenuIndex == index ? 22.0 : 18.0,
                    fontWeight: selectedMenuIndex == index
                        ? FontWeight.w600
                        : FontWeight.normal,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.05,
                ),
              ],
            ),
            Icon(Icons.remove,size: 30.0,color: selectedMenuIndex == index ? textColor : Colors.transparent,)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(left: appPadding),
      child: Container(
        height: size.height * 0.7,
        width: size.width,
        decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50.0),
            )),
        child: Padding(
          padding: EdgeInsets.fromLTRB(appPadding, appPadding, 0.0, appPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              Text(
                'Explore',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: secondaryColor,
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: menuItems
                      .asMap()
                      .entries
                      .map((mapEntry) => _buildMenuItems(mapEntry.key))
                      .toList(),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              ProductList(),
            ],
          ),
        ),
      ),
    );
  }
}
