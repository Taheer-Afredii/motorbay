import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  Color color;

  RPSCustomPainter({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(1.87466, 1.48524);
    path_0.cubicTo(2.21148, 0.937903, 2.80814, 0.604492, 3.45081, 0.604492);
    path_0.lineTo(29.0005, 0.604492);
    path_0.cubicTo(30.4483, 0.604492, 31.3354, 2.19206, 30.5766, 3.42512);
    path_0.lineTo(29.4377, 5.27581);
    path_0.cubicTo(29.1009, 5.82314, 28.5042, 6.15656, 27.8616, 6.15656);
    path_0.lineTo(2.31192, 6.15656);
    path_0.cubicTo(0.86409, 6.15656, -0.0230333, 4.56898, 0.735771, 3.33593);
    path_0.lineTo(1.87466, 1.48524);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color;
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
