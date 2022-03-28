import 'package:flutter/material.dart';
import 'package:graph/data/breath_data.dart';

class ShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.translate(0.0, size.height / 2);
    canvas.drawColor(Colors.grey.shade900, BlendMode.exclusion);
    final paint = new Paint()
      ..color = Colors.purple
      ..strokeWidth = 1;

    double firstJump = 2;
    Offset previousPoint = Offset(0, 0);
    for (var breath in breathData['flow'] as List<double>) {
      final double normalisedBreath = (breath / 2) * -1;
      final p1 = Offset(firstJump, normalisedBreath);
      final p2 = Offset(firstJump + 2, normalisedBreath);

      canvas.drawLine(p1, p2, paint);
      canvas.drawLine(p1, previousPoint, paint);

      firstJump += 2;
      previousPoint = p1;
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
