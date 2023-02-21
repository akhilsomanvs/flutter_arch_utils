import 'dart:math';

import 'package:flutter/material.dart';

class SampleWidget extends StatelessWidget {
  const SampleWidget({
    required double height,
    Key? key,
  })  : _height = height,
        super(key: key);

  final double _height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
      child: ColoredBox(
        color: Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
        child: Center(
          child: Text("Height : $_height"),
        ),
      ),
    );
  }
}
