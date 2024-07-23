import 'package:ecomorce/features/authentication/model/onBoardingController.dart';
import 'package:ecomorce/utils/constants/colors.dart';
import 'package:ecomorce/utils/constants/sizes.dart';
import 'package:ecomorce/utils/device/device_utility.dart';
import 'package:ecomorce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: camel_case_types
class smoothPageIndicator_onboarding extends StatelessWidget {
  const smoothPageIndicator_onboarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunction.isDarkMode(context);


    return Positioned(
        bottom: TDeviceUtility.getBottomNavigationBarHeight() + 25,
        left: TSize.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked:controller.dotNavigationonClick ,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? Tcolors.primary : Tcolors.darkGrey,
              dotHeight: 6),
        ));
  }
}
