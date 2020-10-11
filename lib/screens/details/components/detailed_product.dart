import 'package:flutter/material.dart';
import 'package:sneker_app_ui/constants/constants.dart';
import 'package:sneker_app_ui/models/sneaker.dart';

class DetailedProduct extends StatefulWidget {
  final Sneaker sneker;

  DetailedProduct(this.sneker);

  @override
  _DetailedProductState createState() => _DetailedProductState();
}

class _DetailedProductState extends State<DetailedProduct> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(right: appPadding),
      child: Container(
        height: size.height * 0.65,
        width: size.width,
        decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50.0),
            )),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.04,
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: secondaryColor,
                ),
                onPressed: () => Navigator.pop(context),
              ),
              Align(
                alignment: Alignment.center,
                child: Image(
                  height: size.height * 0.35,
                  image: AssetImage(widget.sneker.imageUrl),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    widget.sneker.firstName + ' ' + widget.sneker.secondName,
                    style: TextStyle(
                      color: secondaryColor,
                      letterSpacing: 1.5,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.remove,size: 30.0,color: textColor,),
                      Text(
                        '\$${widget.sneker.price}',
                        style: TextStyle(
                        color: secondaryColor,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                widget.sneker.details,
                style: TextStyle(
                  color: secondaryColor.withOpacity(0.5),
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Row(
                children: [
                  Icon(Icons.adjust_rounded,color: textColor,),
                  Text('Buy Now',
                    style: TextStyle(
                      color: textColor,
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
