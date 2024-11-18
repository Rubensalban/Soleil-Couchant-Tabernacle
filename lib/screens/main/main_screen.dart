import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../contants.dart';
import '../../controllers/main_controller.dart';
import '../search/search_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  static const routeName = '/mainScreen';

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainController());
    return Scaffold(
      appBar: AppBar(
        title: const Text(kAppName),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(
              context,
              SearchScreen.routeName,
            ),
            icon: SvgPicture.asset(
              kIconSearch,
              color: kWhiteColor,
              height: kIconSizeBottomBarHeight,
              width: kIconSizeBottomBarWidth,
            ),
          ),
        ],
      ),
      body: Obx(() => controller.pages[controller.currentIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          selectedFontSize: kTextSmallSize,
          onTap: controller.onTabTapped,
          currentIndex: controller.currentIndex.value,
          items: [
            BottomNavigationBarItem(
              label: kHome,
              icon: SvgPicture.asset(
                kIconHome,
                color: controller.currentIndex.value == 0
                    ? kPrimaryColor
                    : kGreyPrimaryColor,
                height: kIconSizeBottomBarHeight,
                width: kIconSizeBottomBarWidth,
              ),
            ),
            BottomNavigationBarItem(
              label: kFavorite,
              icon: SvgPicture.asset(
                kIconFavorite,
                color: controller.currentIndex.value == 1
                    ? kPrimaryColor
                    : kGreyPrimaryColor,
                height: kIconSizeBottomBarHeight,
                width: kIconSizeBottomBarWidth,
              ),
            ),
            BottomNavigationBarItem(
              label: kLocation,
              icon: SvgPicture.asset(
                kIconLocation,
                color: controller.currentIndex.value == 2
                    ? kPrimaryColor
                    : kGreyPrimaryColor,
                height: kIconSizeBottomBarHeight,
                width: kIconSizeBottomBarWidth,
              ),
            ),
            BottomNavigationBarItem(
              label: kAbout,
              icon: SvgPicture.asset(
                kIconAbout,
                color: controller.currentIndex.value == 3
                    ? kPrimaryColor
                    : kGreyPrimaryColor,
                height: kIconSizeBottomBarHeight,
                width: kIconSizeBottomBarWidth,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
