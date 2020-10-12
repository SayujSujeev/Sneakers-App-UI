import 'package:flutter/material.dart';
import 'package:sneker_app_ui/models/sneakers.dart';
import 'package:sneker_app_ui/screens/details/components/details_body.dart';

class DetailsScreen extends StatefulWidget {

  final Sneaker sneker;

  const DetailsScreen({Key key, this.sneker}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsBody(widget.sneker),
    );
  }
}
