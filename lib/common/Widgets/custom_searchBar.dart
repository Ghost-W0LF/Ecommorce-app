import 'package:ecomorce/utils/constants/colors.dart';
import 'package:ecomorce/utils/device/device_utility.dart';
import 'package:ecomorce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class searchBar extends StatefulWidget {
  searchBar({
    super.key,
  });

  @override
  State<searchBar> createState() => _searchBarState();
}

class _searchBarState extends State<searchBar> {
  @override
  Widget build(BuildContext context) {
    bool dark = THelperFunction.isDarkMode(context);
    return Container(
      padding: EdgeInsets.all(8),
      height: 40,
      width: TDeviceUtility.getScreenWidth(context),
      decoration: BoxDecoration(
          color: Tcolors.white,
          borderRadius: BorderRadius.circular(13),
          border: Border.all(color: dark ? Tcolors.accent : Tcolors.darkGrey)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.search,
            color: dark ? Tcolors.black : Tcolors.darkGrey,
          ),
          Text(
            "Search in Store",
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: dark ? Tcolors.black : Tcolors.darkGrey),
          )
        ],
      ),
    );
  }
}
