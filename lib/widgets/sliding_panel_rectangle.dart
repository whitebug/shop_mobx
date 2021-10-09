import 'package:flutter/material.dart';

/// Widget draws a rectangle for the top of the sliding panel
class SlidingPanelRectangle extends StatelessWidget {
  /// Width of the rectangle. Default value is 60.0
  final double width;
  /// Color of rectangle. Color would be with .withOpacity(1.0).
  /// Default value is Color(0xff9B9B9B)
  final Color color;
  const SlidingPanelRectangle({
    this.width = 60.0,
    this.color = const Color(0xff9B9B9B),
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(
        width,
        (width * 0.1).toDouble(),
      ),
      painter: RectangleCustomPainter(color: color),
    );
  }
}

class RectangleCustomPainter extends CustomPainter {
  final Color color;

  RectangleCustomPainter({
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = color.withOpacity(1.0);
    canvas.drawRRect(
      RRect.fromRectAndCorners(
        Rect.fromLTWH(0, 0, size.width, size.height),
        bottomRight: Radius.circular(size.width * 0.05000000),
        bottomLeft: Radius.circular(size.width * 0.05000000),
        topLeft: Radius.circular(size.width * 0.05000000),
        topRight: Radius.circular(size.width * 0.05000000),
      ),
      paint_0_fill,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
