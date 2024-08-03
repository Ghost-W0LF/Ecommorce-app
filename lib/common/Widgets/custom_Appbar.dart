// ignore_for_file: prefer_const_constructors

import 'package:ecomorce/utils/constants/colors.dart';
import 'package:ecomorce/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppbar(
      {super.key,
      required this.title,
      this.havebackarrow = false,
      this.leadindIcon,
      required this.actionIcon});
  final Widget? title;
  final bool havebackarrow;
  final IconData? leadindIcon;
  final Widget actionIcon;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 70,
      automaticallyImplyLeading: false,
      backgroundColor: Tcolors.primary.withOpacity(0.2),
      leading: havebackarrow
          ? IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.keyboard_return),
            )
          : leadindIcon == null
              ? IconButton(
                  onPressed: () {},
                  icon: Icon(
                    leadindIcon,
                    color: Tcolors.white,
                  ),
                )
              : null,
      title: title,
      actions: [
        actionIcon,
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TSize.appBarHeight + 10);
}
