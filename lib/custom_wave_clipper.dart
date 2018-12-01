import 'package:flutter/material.dart';

class MyCustomClipper extends StatefulWidget {
  _MyCustomClipperState createState() => _MyCustomClipperState();
}

class _MyCustomClipperState extends State<MyCustomClipper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipPath(
        clipper: WaveClipper(),
        child: SizedBox(
          height: 200,
          width: 500,
          child: AppBar(
            leading: Icon(Icons.arrow_back),
            actions: <Widget>[Icon(Icons.search), Icon(Icons.filter_list)],
          ),
        ),
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0.0, size.height - 50);
    //first magnet
    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2, size.height - 50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    //Second magnet
    var secondControlPoint = Offset(size.width * 0.75, size.height - 100);
    var secondEndPoint = Offset(size.width, size.height - 50);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
