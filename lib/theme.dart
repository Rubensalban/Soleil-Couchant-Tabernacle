import 'package:flutter/material.dart';

import 'contants.dart';
import 'size_config.dart';

ThemeData theme(context) {
  SizeConfig().init(context);
  return ThemeData(
    useMaterial3: true,
    fontFamily: kFontFamily,
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kScaffoldColor,
    cardTheme: cardTheme(),
    bottomNavigationBarTheme: bottomNavigationBarTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    textSelectionTheme: textSelectionTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextSelectionThemeData textSelectionTheme() {
  return const TextSelectionThemeData(cursorColor: kWhiteColor);
}

InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(
    focusColor: kPrimaryColor,
    filled: true,
    prefixIconColor: kPrimaryColor,
    suffixIconColor: kPrimaryColor,
    hintStyle: TextStyle(color: kWhiteColor, fontSize: kTextMediumSize),
    contentPadding: const EdgeInsets.symmetric(horizontal: kInputPadding),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: kPrimaryColor, width: 1.5),
      borderRadius: BorderRadius.circular(kCornerRadius),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 2.0, color: kRedColor),
      borderRadius: BorderRadius.circular(kCornerRadius),
    ),
    border: OutlineInputBorder(
      borderSide: const BorderSide(color: kPrimaryColor, width: 0.5),
      borderRadius: BorderRadius.circular(kCornerRadius),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 2.0, color: kPrimaryColor),
      borderRadius: BorderRadius.circular(kCornerRadius),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 1.5, color: kRedColor),
      borderRadius: BorderRadius.circular(kCornerRadius),
    ),
    errorStyle: const TextStyle(height: 0, color: Colors.transparent),
  );
}

CardTheme cardTheme() {
  return CardTheme(
    surfaceTintColor: kWhiteColor,
    color: kWhiteColor,
    elevation: kElevation,
  );
}

BottomNavigationBarThemeData bottomNavigationBarTheme() {
  return const BottomNavigationBarThemeData(
    backgroundColor: kWhiteColor,
    selectedItemColor: kPrimaryColor,
    unselectedItemColor: kGreyPrimaryColor,
    type: BottomNavigationBarType.fixed,
    selectedLabelStyle: TextStyle(
      color: kPrimaryColor,
      fontWeight: FontWeight.w700,
    ),
    unselectedLabelStyle: TextStyle(
      color: kGreyPrimaryColor,
      fontWeight: FontWeight.w500,
    ),
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyLarge: TextStyle(color: kBlackColor, fontSize: kTextLargeSize),
    bodyMedium: TextStyle(color: kBlackColor, fontSize: kTextMediumSize),
    bodySmall: TextStyle(color: kBlackColor, fontSize: kTextSmallSize),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    elevation: 0,
    centerTitle: true,
    backgroundColor: kPrimaryColor,
    titleTextStyle: TextStyle(
      color: kWhiteColor,
      fontWeight: FontWeight.w700,
      fontSize: kTextAppBarSize,
    ),
    iconTheme: const IconThemeData(color: kWhiteColor),
  );
}
