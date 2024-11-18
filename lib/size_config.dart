import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double devicePixelRatio;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    devicePixelRatio = _mediaQueryData.devicePixelRatio;
    orientation = _mediaQueryData.orientation;

    if (Platform.isIOS && _isIPad()) {
      screenWidth = _adjustForIPad(screenWidth);
      screenHeight = _adjustForIPad(screenHeight);
    }
  }

  bool _isIPad() {
    final double aspectRatio = screenWidth / screenHeight;
    return (devicePixelRatio < 2.0 && aspectRatio > 0.7 && aspectRatio < 1.5);
  }

  double _adjustForIPad(double size) {
    return size * 0.9;
  }
}

double getHeight(double inputHeight) {
  late double screenHeight = SizeConfig.screenHeight;
  double referenceHeight =
      (Platform.isIOS && SizeConfig()._isIPad()) ? 1024.0 : 812.0;
  return (inputHeight / referenceHeight) * screenHeight;
}

double getWidth(double inputWidth) {
  late double screenWidth = SizeConfig.screenWidth;
  double referenceWidth =
      (Platform.isIOS && SizeConfig()._isIPad()) ? 768.0 : 375.0;
  return (inputWidth / referenceWidth) * screenWidth;
}
