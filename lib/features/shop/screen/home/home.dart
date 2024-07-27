import 'package:ecomorce/common/Widgets/custom_container.dart';
import 'package:ecomorce/common/styles/Tclipper.dart';
import 'package:ecomorce/features/shop/screen/home/widgets/homeHedder.dart';
import 'package:ecomorce/utils/constants/colors.dart';
import 'package:ecomorce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 400,
        width: double.infinity,
        child: SingleChildScrollView(
          //  padding: EdgeInsets.all(0),
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
      ),
    );
  }
}
