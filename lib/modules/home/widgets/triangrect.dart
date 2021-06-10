import 'package:flutter/material.dart';

class TriangRect extends StatelessWidget {
  TriangRect({
    Key? key,
    this.color = Colors.blue,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(decoration: BoxDecoration(color: color)),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height * 0.90);
    //var pointBegin = Offset(20, size.height * 0.8);
    var pointEnd = Offset(size.width * 0.1, size.height * 0.965);
    //path.moveTo(pointBegin.dx, pointBegin.dy);
    //
    path.quadraticBezierTo(
      size.width * 0.0,
      size.height * 1.03,
      pointEnd.dx,
      pointEnd.dy,
    );
    //path.lineTo(size.width * 0.1, size.height);
    //
    // path.lineTo(size.width * 0.9, size.height);
    // path.quadraticBezierTo(
    //   size.width * 1,
    //   size.height * 1.0,
    //   size.width,
    //   size.height * 0.9,
    // );
    //path.lineTo(size.width, size.height * 0.9);
    //
    path.lineTo(size.width * 0.96, size.height * 0.11);
    path.quadraticBezierTo(
      size.width * 1.03,
      size.height * 0.01,
      size.width * 0.91,
      0,
    );
    //path.lineTo(size.width * 0.9, 0);
    //
    path.lineTo(size.width * 0.1, 0);
    path.quadraticBezierTo(
      size.width * 0,
      size.height * 0,
      size.width * 0,
      size.height * 0.1,
    );
    // path.lineTo(0, size.height * 0.1);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}



    // Container(
    //   color: Colors.blueAccent,
    //   width: double.maxFinite,
    //   height: double.maxFinite,
    //   child: CustomPaint(
    //     painter: PathPainter(),
    //   ),
    // );

// class PathPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint()
//       ..color = Colors.black
//       ..style = PaintingStyle.fill
//       ..strokeWidth = 8.0;

//     var pointBegin = Offset(20, size.height * 0.8);
//     var pointEnd = Offset(size.width * 0.3, size.height - 20);

//     Path path = Path();
//     path.moveTo(pointBegin.dx, pointBegin.dy);
//     //
//     path.quadraticBezierTo(
//       size.width * 0,
//       size.height * 1.0,
//       pointEnd.dx,
//       pointEnd.dy,
//     );
//     //
//     pointBegin = Offset(size.width * 0.8, size.height);
//     pointEnd = Offset(size.width, size.height * 0.8);

//     //Path path = Path();
//     path.moveTo(pointBegin.dx, pointBegin.dy);
//     //
//     path.quadraticBezierTo(
//       size.width * 1,
//       size.height * 1,
//       pointEnd.dx,
//       pointEnd.dy,
//     );
//     //
//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => true;
// }