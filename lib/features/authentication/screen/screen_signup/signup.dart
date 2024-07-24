// ignore_for_file: prefer_const_constructors


import 'package:ecomorce/common/login_Signup/formDivider.dart';
import 'package:ecomorce/common/login_Signup/social_buttons.dart';
import 'package:ecomorce/features/authentication/screen/screen_signup/signup_widgits/signup_form.dart';

import 'package:ecomorce/utils/constants/sizes.dart';
import 'package:ecomorce/utils/constants/text_String.dart';

import 'package:ecomorce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    bool dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.only(
            top: TSize.appBarHeight + 30,
            left: TSize.defaultSpace,
            right: TSize.defaultSpace),
        child: Column(
          children: [
            //form
            signup_form(dark: dark),
            SizedBox(height: TSize.spaceBtwitems),
            //Fotter
            TFormDivider(formDividerText: TText.orSignUpwith, ht: 40),
            SizedBox(height: TSize.spaceBtwitems + 30),
            social_login(dark: dark)
          ],
        ),
      ),
    );
  }
}

