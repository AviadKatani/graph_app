import 'package:flutter/material.dart';

class ShapePainter extends CustomPainter {
  final List<num> breathDataToDraw;

  ShapePainter(this.breathDataToDraw);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.translate(0.0, size.height / 2);
    canvas.drawColor(Colors.grey.shade900, BlendMode.exclusion);

    final paint = Paint()
      ..color = Colors.purple
      ..strokeWidth = 1;

    double firstJump = 2;
    Offset p2 = const Offset(0, 0);
    for (var breath in breathDataToDraw) {
      final double normalisedBreath = (breath / 2) * -1;
      final p1 = Offset(firstJump, normalisedBreath);

      canvas.drawLine(p1, p2, paint);

      firstJump += 2;
      p2 = p1;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

  // @override
  // void alignedPaint(Canvas canvas, Size size) {
  //   for (int i = 0; i < (breathData['flow'] as List<double>).length; ++i) {
  //     var middleRad = middles[i];
  //     var item = items[i];
  //     var rad = size.width / 2;
  //
  //     var middleX = rad + rad * textDisplayCenter * cos(middleRad);
  //     var middleY = rad + rad * textDisplayCenter * sin(middleRad);
  //
  //     TextPainter textPainter = toText(item, total)..layout();
  //     textPainter.paint(
  //         canvas,
  //         Offset(middleX - (textPainter.width / 2),
  //             middleY - (textPainter.height / 2)));
  //   }
}
