// ignore_for_file: prefer_const_constructors
import 'package:ecomorce/common/Widgets/custom_container.dart';

import 'package:ecomorce/common/Widgets/sectionTitle/sectionTitle.dart';
import 'package:ecomorce/common/banner%20with%20indicator/banner_Indicator.dart';
import 'package:ecomorce/common/layout/gridLayout.dart';
import 'package:ecomorce/common/styles/Tclipper.dart';
import 'package:ecomorce/common/verticalProductCard.dart';
import 'package:ecomorce/features/shop/screen/home/widgets/homeHedder.dart';

import 'package:ecomorce/utils/constants/colors.dart';
import 'package:ecomorce/utils/constants/imagge_string.dart';
import 'package:ecomorce/utils/constants/sizes.dart';

import 'package:ecomorce/utils/device/device_utility.dart';
import 'package:ecomorce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  homePage({
    super.key,
  });

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    bool dark = THelperFunction.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        //  padding: EdgeInsets.all(0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 400,
            child: Stack(
              children: [
                ClipPath(
                  clipper: TClipper(),
                  child: custom_container(
                    height: 400,
                    width: double.infinity,
                    color: Tcolors.primary,
                  ),
                ),
                Positioned(
                  right: -280,
                  top: TDeviceUtility.getAppBarHeight() + 100,
                  child: custom_container(
                    height: 400,
                    width: 400,
                    color: Tcolors.white.withOpacity(0.1),
                    rds: 400,
                  ),
                ),
                //Headder
                homeHeadder(),
                //decoration2
                Positioned(
                  right: -280,
                  top: TDeviceUtility.getAppBarHeight() - 150,
                  child: custom_container(
                    height: 400,
                    width: 400,
                    color: Tcolors.white.withOpacity(0.1),
                    rds: 400,
                  ),
                ),
              ],
            ),
          ),
          //banner with indicator
          banner_pageIndicator(),
          SizedBox(
            height: 20,
          ),
          sectionTitel(label: "Products"),

          gridLayout(
              itemCount: 4,
              itemBuilder: (_, index) => VerticalProductCard(
                    image: TImage.shoes1,
                    companyName: "NIKE",
                    isVerified: true,
                    price: 5000,
                  )),
        ]),
      ),
    );
  }
}
