import 'package:flutter/material.dart';

import 'screens/main/main_screen.dart';
import 'screens/onboarding/onboarding_screen.dart';
import 'screens/search/search_screen.dart';
import 'screens/started/started_screen.dart';

final Map<String, WidgetBuilder> routes = {
  StartedScreen.routeName: (context) => const StartedScreen(),
  OnboardingScreen.routeName: (context) => const OnboardingScreen(),
  MainScreen.routeName: (context) => const MainScreen(),
  SearchScreen.routeName: (context) => const SearchScreen(),
};
