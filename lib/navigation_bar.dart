// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:ecomorce/common/sucess_Screen.dart';
import 'package:ecomorce/features/authentication/screen/screen_login/login.dart';
import 'package:ecomorce/features/authentication/screen/screen_signup/signup.dart';
import 'package:ecomorce/features/authentication/screen/verify%20email%20Screen/verify_email.dart';
import 'package:ecomorce/features/shop/screen/home/home.dart';
import 'package:ecomorce/utils/constants/colors.dart';
import 'package:ecomorce/utils/constants/sizes.dart';
import 'package:ecomorce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class navigationBar extends StatefulWidget {
  navigationBar({super.key});

  @override
  State<navigationBar> createState() => _navigationBarState();
}

class _navigationBarState extends State<navigationBar> {
  @override
  int page = 0;
  final screen = [homePage(), loginScreen(), VerifyEmail(), sucessScreen()];

  // default selected index
  Widget build(BuildContext context) {
    bool dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      body: screen[page],
      bottomNavigationBar: NavigationBar(
        backgroundColor:
            dark ? Tcolors.primary : Tcolors.accent.withOpacity(0.4),
        height: TSize.appBarHeight,
        selectedIndex: page,
        onDestinationSelected: (index) {
          setState(() {
            this.page = index;
          });
        },
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.store_outlined),
            label: "Store",
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite_outline),
            label: "Wishlist",
          ),
          NavigationDestination(
            icon: Icon(Icons.person_2_outlined),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
