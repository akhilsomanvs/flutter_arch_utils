part of flutter_arch_utils;

class SizeConfig {
  // static late MediaQueryData _mediaQueryData;
  static late double _screenWidth;
  static late double _screenHeight;
  static double _blockSizeHorizontal = 0;
  static double _blockSizeVertical = 0;

  static late double _textMultiplier;
  static late double _imageSizeMultiplier;
  static late double _heightMultiplier;
  static late double _widthMultiplier;
  static late double _designHeightMultiplier;
  static late double _designWidthMultiplier;
  static bool isPortrait = true;
  static bool isMobilePortrait = false;

  void init(Size designSize, BoxConstraints constraints, Orientation orientation) {
    // _mediaQueryData = MediaQuery.of(context);
    isPortrait = orientation == Orientation.portrait;
    // isMobilePortrait = isPortrait && getDeviceType(_mediaQueryData) == DeviceScreenType.Mobile;

    _designHeightMultiplier = designSize.height / 100;
    _designWidthMultiplier = designSize.width / 100;

    if (isPortrait) {
      _screenWidth = constraints.maxWidth;
      _screenHeight = constraints.maxHeight;
    } else {
      _screenWidth = constraints.maxHeight;
      _screenHeight = constraints.maxWidth;
    }

    _blockSizeHorizontal = _screenWidth / 100;
    _blockSizeVertical = _screenHeight / 100;

    _textMultiplier = _blockSizeVertical;
    _imageSizeMultiplier = _blockSizeHorizontal;
    _heightMultiplier = _blockSizeVertical;
    _widthMultiplier = _blockSizeHorizontal;

    debugPrint("TextSize : $_textMultiplier, Height : $_heightMultiplier, Width : $_widthMultiplier");
  }

  static double getVerticalSize(double height) {
    return (height / _designHeightMultiplier) * _heightMultiplier;
  }

  static double getHorizontalSize(double width) {
    return (width / _designWidthMultiplier) * _widthMultiplier;
  }

  static double getTextSize(double textSize) {
    return (textSize / _designHeightMultiplier) * _textMultiplier;
  }

}

extension SizeConfigExtension on num {
  double vdp() {
    var value = this;
    if (value is double) {
      return SizeConfig.getVerticalSize(value);
    } else {
      return SizeConfig.getVerticalSize(value.toDouble());
    }
  }

  double hdp() {
    var value = this;
    if (value is double) {
      return SizeConfig.getHorizontalSize(value);
    } else {
      return SizeConfig.getHorizontalSize(value.toDouble());
    }
  }

  double sp() {
    return vdp().toInt().toDouble();
  }
}
