import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soleilcouchanttabernacle/enum.dart';

import '../../components/custom_button.dart';
import '../../contants.dart';
import '../../size_config.dart';
import '../started/started_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  static const String routeName = '/onboardingScreen';
  static final List<List<String>> products = [
    [kHeaderSlide1, onBoardingTitle1, onBoardingSubTitle1],
    [kHeaderSlide2, onBoardingTitle2, onBoardingSubTitle2],
    [kHeaderSlide3, onBoardingTitle3, onBoardingSubTitle3],
    [kHeaderSlide4, onBoardingTitle4, onBoardingSubTitle4]
  ];

  static final RxInt currentIndex = 0.obs;
  static final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: products.length,
              onPageChanged: (index) {
                currentIndex.value = index;
              },
              itemBuilder: (context, index) {
                return GestureDetector(
                  onHorizontalDragEnd: (DragEndDetails details) {
                    if (details.velocity.pixelsPerSecond.dx > 0) {
                      _preve();
                    } else if (details.velocity.pixelsPerSecond.dx < 0) {
                      _next();
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    height: kImgHeight,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(products[index][0]),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            kPrimaryColor.withOpacity(.9),
                            kPrimaryColor.withOpacity(.0),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Transform.translate(
            offset: const Offset(0, -25),
            child: Obx(
              () => Column(
                children: [
                  Container(
                    width: getWidth(150),
                    margin: EdgeInsets.only(bottom: kRegularHeight),
                    child: Row(
                      children: _buildIndicator(),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 250,
                    padding: EdgeInsets.only(
                      left: kRegularHeight,
                      right: kRegularHeight,
                      top: kRegularHeight,
                      bottom: kRegularHeight,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              products[currentIndex.value][1],
                              textAlign: TextAlign.center,
                              style: kStyleLarge.copyWith(
                                color: kWhiteColor,
                                fontSize: getWidth(22.0),
                              ),
                            ),
                            Text(
                              products[currentIndex.value][2],
                              textAlign: TextAlign.center,
                              style: kStyleRegular.copyWith(color: kWhiteColor),
                            ),
                          ],
                        ),
                        CustomButton()
                            .setText(currentIndex.value < 2 ? kNext : kContinue)
                            .setButtonType(ButtonType.secondary)
                            .setOnPress(() {
                          if (currentIndex.value < 3) {
                            _next();
                          } else {
                            Navigator.pushNamed(
                              context,
                              StartedScreen.routeName,
                            );
                          }
                        }).build(),
                      ],
                    ).paddingOnly(left: kRegularWidth, right: kRegularWidth),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _next() {
    if (currentIndex.value < products.length - 1) {
      currentIndex.value++;
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _preve() {
    if (currentIndex.value > 0) {
      currentIndex.value--;
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < products.length; i++) {
      if (currentIndex.value == i) {
        indicators.add(indicator(true));
      } else {
        indicators.add(indicator(false));
      }
    }
    return indicators;
  }

  Expanded indicator(bool isActive) {
    return Expanded(
      child: Container(
        height: kSmallHeight,
        margin: EdgeInsets.only(right: kSmallHeight),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: isActive ? kWhiteColor : kGreySecondaryColor,
        ),
      ),
    );
  }
}
