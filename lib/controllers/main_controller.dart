import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/about/about_screen.dart';
import '../screens/favorite/favorite_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/location/location_screen.dart';

class MainController extends GetxController {
  var currentIndex = 0.obs;

  final List<Widget> pages = const [
    HomeScreen(),
    FavoriteScreen(),
    LocationScreen(),
    AboutScreen()
  ];
  void onTabTapped(int index) {
    currentIndex.value = index;
  }
}
