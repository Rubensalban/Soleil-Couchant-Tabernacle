import 'package:flutter/material.dart';

import 'size_config.dart';

// COLORS
const Color kPrimaryColor = Color(0xF5710204);
const Color kGreySecondaryColor = Color(0xFF999999);
const Color kGreyPrimaryColor = Color(0xFF777777);
const Color kScaffoldColor = Color(0xFFFFFFFF);
const Color kWhiteColor = Color(0xFFFFFFFF);
const Color kBlackColor = Color(0xFF000000);
const Color kRedColor = Color(0xFFFF0000);
const Color kGreenColor = Color(0xFF05A500);
const Color kOrangeColor = Color(0xFFFFA500);

// FONTS
const String kFontFamily = 'OpenSans';

// IMAGES
const String kImgCover = 'assets/imgs/img1.jpg';

// ICONS
const String kIconHome = 'assets/icons/icon_home.svg';
const String kIconLocation = 'assets/icons/icon_location.svg';
const String kIconFavorite = 'assets/icons/icon_favorite.svg';
const String kIconSearch = 'assets/icons/icon_search.svg';
const String kIconAbout = 'assets/icons/icon_about.svg';

// STYLES
final TextStyle kStyleLarge = TextStyle(
  fontFamily: kFontFamily,
  fontSize: kTextLargeSize,
  fontWeight: FontWeight.w700,
);

final TextStyle kStyleMedium = TextStyle(
  fontFamily: kFontFamily,
  fontSize: kTextMediumSize,
  fontWeight: FontWeight.w500,
);
final TextStyle kStyleRegular = TextStyle(
  fontFamily: kFontFamily,
  fontSize: kTextRegularSize,
  fontWeight: FontWeight.w500,
);
final TextStyle kStyleSmall = TextStyle(
  fontFamily: kFontFamily,
  fontSize: kTextSmallSize,
  fontWeight: FontWeight.w500,
);

// SIZES
final double kTextSmallSize = getWidth(10.0);
final double kTextRegularSize = getWidth(14.0);
final double kTextMediumSize = getWidth(16.0);
final double kTextLargeSize = getWidth(20.0);
final double kSmallHeight = getHeight(5.0);
final double kRegularHeight = getHeight(10.0);
final double kMediumHeight = getHeight(20.0);
final double kLargeHeight = getHeight(30.0);
final double kLargeXlHeight = getHeight(50.0);
final double kSmallWidth = getWidth(5.0);
final double kRegularWidth = getWidth(10.0);
final double kMediumWidth = getWidth(20.0);
final double kLargeWidth = getWidth(30.0);
final double kCornerRadius = getWidth(20.0);
final double kElevation = getWidth(2.0);
final double kTextAppBarSize = getWidth(18.0);
const double kInputPadding = 10.0;
const double kContentPadding = 20.0;
const double kPadding = 10.0;
final double kButtonHeight = getWidth(50.0);
final double kTextButtonSize = getWidth(16.0);
final double kIconSizeBottomBarHeight = getHeight(28.0);
final double kIconSizeBottomBarWidth = getWidth(28.0);

// TEXTE
const String kAppName = "Soleil Couchant Tabernacle";
const String kWelcomTo =
    'Bienvenue à Soleil Couchant Tabernacle. Un lieu de paix et d’adoration où chacun peut trouver son chemin vers la lumière.';
const String kContinue = 'Continuer';
const String kHome = 'Accueil';
const String kAbout = 'À propos';
const String kFavorite = 'Favoris';
const String kLocation = 'Localisation';
const String kSearch = 'Recherche';