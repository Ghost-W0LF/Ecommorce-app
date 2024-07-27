// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:ecomorce/common/Widgets/custom_container.dart';
import 'package:ecomorce/common/Widgets/custom_searchBar.dart';
import 'package:ecomorce/features/shop/screen/home/widgets/homeAppbar.dart';
import 'package:ecomorce/utils/constants/colors.dart';
import 'package:ecomorce/utils/constants/sizes.dart';
import 'package:ecomorce/utils/constants/text_String.dart';
import 'package:flutter/material.dart';

class homeHeadder extends StatelessWidget {
  const homeHeadder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      //APP
      //Bar
      homeAppbar(),
      SizedBox(
        height: 10,
      ),

      Padding(
          padding: EdgeInsets.symmetric(horizontal: TSize.defaultSpace - 5),
          child: searchBar()),
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Text(
          TText.popularCatog,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: Tcolors.white),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      SizedBox(
          height: 100,
          child: ListView.builder(
              //padding: EdgeInsets.all(9),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (_, context) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(2)),
                    custom_container(
                      height: 50,
                      width: 50,
                      rds: 200,
                    )
                  ],
                );
              })),

      //
    ]);
  }
}
