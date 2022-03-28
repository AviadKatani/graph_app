import 'package:flutter/material.dart';
import 'package:graph/widgets/shape_painter.dart';

class GraphScreen extends StatefulWidget {
  final Map<String, dynamic> selectedBreath;
  const GraphScreen(this.selectedBreath, {Key? key}) : super(key: key);

  @override
  State<GraphScreen> createState() => _GraphScreenState();
}

class _GraphScreenState extends State<GraphScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          child: CustomPaint(
            painter: ShapePainter(widget.selectedBreath['flow']),
            child: Container(),
          ),
        ),
      ),
    );
  }
}
