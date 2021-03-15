import 'package:flutter/cupertino.dart';

class ClipPathClass extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    final imageHeight = 100;
    final aux = 30;
    final path = Path();
    path.lineTo(0, size.height - imageHeight);
    
    path.lineTo(size.width / 4 - 1.5*aux, size.height - imageHeight);
    final firstControlPoint = Offset(size.width / 4 - aux - 5, size.height - imageHeight);
    final firstPoint = Offset(size.width / 4 - aux, size.height - imageHeight + 10);
    path.quadraticBezierTo(
      firstControlPoint.dx, firstControlPoint.dy, 
      firstPoint.dx, firstPoint.dy
    );

    final secondControlPoint = Offset(size.width / 4, size.height - 5);
    final secondPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(
      secondControlPoint.dx, secondControlPoint.dy, 
      secondPoint.dx, secondPoint.dy
    );

    final thirdControlPoint = Offset(3 * size.width / 4, size.height - 5);
    final thirdPoint = Offset(3 * size.width / 4 + aux, size.height - imageHeight + 10);
    path.quadraticBezierTo(
      thirdControlPoint.dx, thirdControlPoint.dy, 
      thirdPoint.dx, thirdPoint.dy
    );

    final fourthControlPoint = Offset(3 * size.width / 4 + aux + 5, size.height - imageHeight);
    final fourthPoint = Offset(3 * size.width / 4 + 1.5*aux, size.height - imageHeight);
    path.quadraticBezierTo(
      fourthControlPoint.dx, fourthControlPoint.dy, 
      fourthPoint.dx, fourthPoint.dy
    );

    path.lineTo(size.width, size.height - imageHeight);

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}