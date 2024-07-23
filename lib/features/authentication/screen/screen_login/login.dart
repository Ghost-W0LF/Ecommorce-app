// ignore_for_file: prefer_const_constructors
import 'package:ecomorce/common/login_Signup/formDivider.dart';
import 'package:ecomorce/common/login_Signup/social_buttons.dart';
import 'package:ecomorce/features/authentication/screen/screen_login/login_Widgits/login%20Widget/login_form.dart';
import 'package:ecomorce/features/authentication/screen/screen_login/login_Widgits/login_headder.dart';
import 'package:ecomorce/utils/constants/sizes.dart';
import 'package:ecomorce/utils/constants/text_String.dart';
import 'package:ecomorce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.only(
                left: TSize.defaultSpace, right: TSize.defaultSpace),
            child: Column(
              children: [
                //header
                headder_login(),
                SizedBox(height: TSize.defaultSpace),
                //Form
                form(),
                //Divider
                TFormDivider(
                  formDividerText: TText.orSignInwith,
                ),
                SizedBox(height: TSize.spaceBtSections),
                //Footer
                social_login(dark: dark)
              ],
            )));
  }
}
