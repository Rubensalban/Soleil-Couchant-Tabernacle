import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/custom_button.dart';
import '../../contants.dart';
import '../../enum.dart';
import '../main/main_screen.dart';

class StartedScreen extends StatelessWidget {
  const StartedScreen({super.key});
  static const String routeName = '/startedScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(kImgCover),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                kPrimaryColor.withOpacity(.9),
                kPrimaryColor.withOpacity(.8),
                kPrimaryColor.withOpacity(.7),
                kPrimaryColor.withOpacity(.0),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(kContentPadding),
            child: Column(
              children: [
                const Spacer(),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(kContentPadding),
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(kCornerRadius),
                  ),
                  child: Column(
                    children: [
                      Text(
                        kAppName,
                        textAlign: TextAlign.center,
                        style: kStyleLarge,
                      ),
                      SizedBox(height: kRegularHeight),
                      Text(
                        kWelcomTo,
                        textAlign: TextAlign.center,
                        style: kStyleRegular,
                      ),
                      SizedBox(height: kMediumHeight),
                      CustomButton()
                          .setText(kContinue)
                          .setButtonType(ButtonType.primary)
                          .setOnPress(
                        () {
                          Get.offNamed(MainScreen.routeName);
                        },
                      ).build(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
