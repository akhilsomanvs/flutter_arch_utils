import 'package:flutter/material.dart';
import 'package:flutter_arch_utils/arch_utils/enums/device_screen_type.dart';

class DeviceType {
  static DeviceScreenType getDeviceType(MediaQueryData mediaQueryData) {
    double deviceWidth = mediaQueryData.size.shortestSide;

    if (deviceWidth > 950) {
      return DeviceScreenType.Desktop;
    } else if (deviceWidth > 600) {
      return DeviceScreenType.Tablet;
    } else {
      return DeviceScreenType.Mobile;
    }
  }
}
