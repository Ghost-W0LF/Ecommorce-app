import 'package:ecomorce/common/Widgets/custom_Appbar.dart';
import 'package:ecomorce/common/Widgets/custom_container.dart';
import 'package:ecomorce/utils/constants/colors.dart';
import 'package:ecomorce/utils/constants/text_String.dart';
import 'package:ecomorce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class homeAppbar extends StatelessWidget {
  const homeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool dark = THelperFunction.isDarkMode(context);
    return CustomAppbar(
      havebackarrow: false,
      actionIcon: Column(
        children: [
          custom_container(
            height: 20,
            width: 20,
            rds: 900,
            color: Tcolors.black,
            child: Text(
              "2",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: dark ? Tcolors.primaryBackground : Tcolors.white),
            ),
          ),
          Icon(Icons.shopping_bag,
              color: dark ? Tcolors.primaryBackground : Tcolors.white),
        ],
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(TText.homeAppbarTitle,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: dark ? Tcolors.primaryBackground : Tcolors.white)),
          Text(TText.homeAppbarSubTitle,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: dark ? Tcolors.primaryBackground : Tcolors.white)),
        ],
      ),
    );
  }
}
