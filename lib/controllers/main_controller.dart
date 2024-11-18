import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  var currentIndex = 0.obs;

  final List<Widget> pages = [
    Center(
      child: Text('Home Screen'),
    ),
    Center(
      child: Text('Favoris'),
    ),
    Center(
      child: Text('Location'),
    ),
    Center(
      child: Text('About'),
    ),
  ];
  void onTabTapped(int index) {
    currentIndex.value = index;
  }
}
