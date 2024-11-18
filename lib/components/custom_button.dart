import 'package:flutter/material.dart';

import '../contants.dart';
import '../enum.dart';

class CustomButton {
  String? _text;
  Function? _onPress;
  ButtonType? _buttonType;

  CustomButton setText(String text) {
    _text = text;
    return this;
  }

  CustomButton setOnPress(Function onPress) {
    _onPress = onPress;
    return this;
  }

  CustomButton setButtonType(ButtonType type) {
    _buttonType = type;
    return this;
  }

  Widget build() {
    Color backgroundColor;
    Color textColor;

    switch (_buttonType) {
      case ButtonType.primary:
        backgroundColor = kPrimaryColor;
        textColor = kWhiteColor;
        break;
      case ButtonType.secondary:
        backgroundColor = Colors.transparent;
        textColor = kPrimaryColor;
        break;
      default:
        backgroundColor = kPrimaryColor;
        textColor = kWhiteColor;
    }

    return SizedBox(
      width: double.infinity,
      height: kButtonHeight,
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: textColor,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(90),
          ),
        ),
        onPressed: _onPress as void Function()?,
        child: Text(
          _text ?? 'Button',
          style: TextStyle(
            fontSize: kTextButtonSize,
            color: textColor,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
