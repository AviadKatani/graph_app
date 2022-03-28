import 'package:flutter/material.dart';
import 'package:graph/widgets/shape_painter.dart';

class GraphScreen extends StatefulWidget {
  const GraphScreen({Key? key}) : super(key: key);

  @override
  State<GraphScreen> createState() => _GraphScreenState();
}

class _GraphScreenState extends State<GraphScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: CustomPaint(
            painter: ShapePainter(),
            child: Container(),
          ),
        ),
      ),
    );
  }
}
