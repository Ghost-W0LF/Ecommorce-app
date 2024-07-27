import 'package:ecomorce/utils/constants/colors.dart';
import 'package:ecomorce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class searchBar extends StatelessWidget {
  const searchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 40,
      width: TDeviceUtility.getScreenWidth(context),
      decoration: BoxDecoration(
          color: Tcolors.white,
          borderRadius: BorderRadius.circular(13),
          border: Border.all(color: Tcolors.white)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [Icon(Icons.search), Text("Scearch in Store")],
      ),
    );
  }
}
