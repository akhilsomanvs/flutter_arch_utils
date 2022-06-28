import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_arch_utils/flutter_arch_utils.dart';

typedef SizeConfigBuilder = Widget Function(
  BuildContext context,
  Constraints constraints,
  Orientation orientation,
);

class SizeConfigParentWidget extends StatelessWidget {
  const SizeConfigParentWidget({Key? key, this.designSize = const Size(375, 812), required this.builder}) : super(key: key);
  final Size designSize;
  final SizeConfigBuilder builder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(designSize, constraints, orientation);
        return builder(context, constraints, orientation);
      });
    });
  }
}
