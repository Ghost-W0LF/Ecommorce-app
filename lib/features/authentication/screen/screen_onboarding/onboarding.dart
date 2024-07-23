// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecomorce/features/authentication/model/onBoardingController.dart';
import 'package:ecomorce/features/authentication/screen/screen_onboarding/onBoarding_widgits/onboarding_pageview.dart';
import 'package:ecomorce/features/authentication/screen/screen_onboarding/onBoarding_widgits/onboarding_skip.dart';
import 'package:ecomorce/features/authentication/screen/screen_onboarding/onBoarding_widgits/roundButton_onboarding.dart';
import 'package:ecomorce/features/authentication/screen/screen_onboarding/onBoarding_widgits/smoothpageIndicator_0nboarding.dart';
import 'package:ecomorce/utils/constants/imagge_string.dart';
import 'package:ecomorce/utils/constants/text_String.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller:controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: [
            onboardingpage(
              image: TImage.onboardingImage1,
              title: TText.onboardingTitle1,
              subtitle: TText.onboardingSubtitle1,
            ),
            onboardingpage(
              image: TImage.onboardingImage2,
              title: TText.onboardingTitle2,
              subtitle: TText.onboardingSubtitle2,
            ),
            onboardingpage(
              image: TImage.onboardingImage3,
              title: TText.onboardingTitle3,
              subtitle: TText.onboardingSubtitle3,
            )
          ],
        ),
        //skip button
        obboarding_skip(),
        //smooth page indicator
        smoothPageIndicator_onboarding(),
        //circular button
        onboarding_roundButton()
      ],
    ));
  }
}
