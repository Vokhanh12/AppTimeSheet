import 'package:flutter/material.dart';

class ScreenConfig {
  static double _screenWidth = 0.0;
  static double _screenHeigth = 0.0;

  static double ratioLogo = 0.0;

  ScreenConfig(double screenWidth, double screenHeigth) {
    _screenWidth = screenWidth;
    _screenHeigth = screenHeigth;

    if (_screenWidth >= 320 && _screenWidth <= 428)
      ratioLogo = 1.0;
    else if (_screenWidth >= 360 && _screenWidth <= 414)
      ratioLogo = 2.0;
    else if (_screenWidth >= 414 && _screenWidth <= 768) ratioLogo = 3.0;
  }

  double getRatioLogoHeight() {
    return 100 * ratioLogo;
  }

  double getRatioLogoWigth() {
    return 60 * ratioLogo;
  }
}
