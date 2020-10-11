import 'package:flutter/material.dart';

class HomeBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //To get the size of the device
    Size size = MediaQuery.of(context).size;


    //The gradient is not looking good because of the emulator in real devices it will be good.
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: [Colors.indigo[900],Colors.indigo[800],Colors.indigo[300],Colors.indigo[200]]
        )
      ),
    );
  }
}
