import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Path 0 - Outer Circle Stroke
    Path path_0 = Path();
    path_0.moveTo(439.07, 186.85);
    path_0.cubicTo(439.07, 211.95, 418.72, 232.3, 393.62, 232.3);
    path_0.cubicTo(368.52, 232.3, 348.17, 211.95, 348.17, 186.85);
    path_0.cubicTo(348.17, 161.75, 368.52, 141.41, 393.62, 141.41);
    path_0.cubicTo(418.72, 141.41, 439.07, 161.75, 439.07, 186.85);
    path_0.close();

    Paint paint0Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.006719527;
    paint0Stroke.color = const Color(0xff40BFB6).withValues(alpha: 1.0);
    canvas.drawPath(path_0, paint0Stroke);

    Path path_1 = Path();
    path_1.moveTo(393.62, 151.41);
    path_1.cubicTo(413.17, 151.41, 429.07, 167.31, 429.07, 186.85);
    path_1.cubicTo(429.07, 206.4, 413.17, 222.3, 393.62, 222.3);
    path_1.cubicTo(374.07, 222.3, 358.17, 206.4, 358.17, 186.85);
    path_1.cubicTo(358.17, 167.31, 374.07, 151.41, 393.62, 151.41);
    path_1.moveTo(393.62, 141.41);
    path_1.cubicTo(368.52, 141.41, 348.17, 161.75, 348.17, 186.85);
    path_1.cubicTo(348.17, 211.95, 368.52, 232.3, 393.62, 232.3);
    path_1.cubicTo(418.72, 232.3, 439.07, 211.95, 439.07, 186.85);
    path_1.cubicTo(439.07, 161.75, 418.72, 141.41, 393.62, 141.41);
    path_1.lineTo(393.62, 141.41);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff95D5D3).withValues(alpha: 1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(393.62, 146.41);
    path_2.cubicTo(415.92, 146.41, 434.07, 164.55, 434.07, 186.85);
    path_2.cubicTo(434.07, 209.15, 415.92, 227.3, 393.62, 227.3);
    path_2.cubicTo(371.32, 227.3, 353.17, 209.15, 353.17, 186.85);
    path_2.cubicTo(353.17, 164.55, 371.32, 146.41, 393.62, 146.41);
    path_2.moveTo(393.62, 141.41);
    path_2.cubicTo(368.52, 141.41, 348.17, 161.75, 348.17, 186.85);
    path_2.cubicTo(348.17, 211.95, 368.52, 232.3, 393.62, 232.3);
    path_2.cubicTo(418.72, 232.3, 439.07, 211.95, 439.07, 186.85);
    path_2.cubicTo(439.07, 161.75, 418.72, 141.41, 393.62, 141.41);
    path_2.lineTo(393.62, 141.41);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xff82CECB).withValues(alpha: 1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(439.07, 186.85);
    path_3.cubicTo(439.07, 211.95, 418.72, 232.3, 393.62, 232.3);
    path_3.cubicTo(368.52, 232.3, 348.17, 211.95, 348.17, 186.85);
    path_3.lineTo(439.07, 186.85);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xffFFFFFF).withValues(alpha: 1.0);
    canvas.drawPath(path_3, paint3Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
