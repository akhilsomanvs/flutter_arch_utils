import 'package:flutter/material.dart';
import 'package:flutter_arch_utils/arch_utils/enums/device_screen_type.dart';

class SizingInformation {
  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInformation({/*this.orientation,*/ required this.deviceScreenType, required this.screenSize, required this.localWidgetSize});

  @override
  String toString() {
    return 'DeviceScreenType : $deviceScreenType\nScreenSize : $screenSize\nLocalWidgetSize : $localWidgetSize';
  }
}