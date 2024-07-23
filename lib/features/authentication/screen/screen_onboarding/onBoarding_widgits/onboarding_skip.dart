import 'package:ecomorce/features/authentication/model/onBoardingController.dart';
import 'package:ecomorce/utils/constants/colors.dart';
import 'package:ecomorce/utils/constants/sizes.dart';
import 'package:ecomorce/utils/device/device_utility.dart';
import 'package:ecomorce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class obboarding_skip extends StatelessWidget {
  const obboarding_skip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Positioned(
        top: TDeviceUtility.getAppBarHeight(),
        right: TSize.defaultSpace,
        child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          style: ElevatedButton.styleFrom(
              backgroundColor: dark ? Tcolors.primary : Tcolors.accent),
          child: Text(
            "SKIP",
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ));
  }
}
