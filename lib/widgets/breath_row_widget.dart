import 'package:flutter/material.dart';

class BreathRowWidget extends StatelessWidget {
  final breathData;

  const BreathRowWidget(this.breathData, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(breathData['isValid'] ? 'Valid' : 'Aborted'),
        Text(breathData['date'])
      ],
    );
  }
}
