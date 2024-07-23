import 'package:ecomorce/features/authentication/model/onBoardingController.dart';
import 'package:ecomorce/utils/constants/colors.dart';
import 'package:ecomorce/utils/constants/sizes.dart';
import 'package:ecomorce/utils/device/device_utility.dart';
import 'package:ecomorce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class onboarding_roundButton extends StatelessWidget {
  const onboarding_roundButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Positioned(
        bottom: TDeviceUtility.getBottomNavigationBarHeight() + 5,
        right: TSize.defaultSpace,
        child: ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              backgroundColor: dark ? Tcolors.primary : Tcolors.accent),
          // ignore: prefer_const_constructors
          child: Icon(Icons.arrow_right_alt_sharp),
        ));
  }
}
