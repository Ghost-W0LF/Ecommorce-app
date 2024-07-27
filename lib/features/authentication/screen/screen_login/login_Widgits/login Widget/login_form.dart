// ignore_for_file: prefer_const_constructors

import 'package:ecomorce/navigation_bar.dart';
import 'package:ecomorce/common/Widgets/custom_button2.dart';
import 'package:ecomorce/common/Widgets/custom_textFormField.dart';
import 'package:ecomorce/common/Widgets/custom_button.dart';
import 'package:ecomorce/features/authentication/screen/screen_signup/signup.dart';
import 'package:ecomorce/utils/constants/sizes.dart';
import 'package:ecomorce/utils/constants/text_String.dart';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class form extends StatelessWidget {
  form({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        customTextFormField(
          obsText: false,
          labelText: TText.email,
          PIcn: Icon(Icons.arrow_right_outlined),
          hintText: "Your email@gmail.com",
        ),
        SizedBox(height: TSize.spaceBtSections),
        customTextFormField(
          obsText: true,
          labelText: TText.password,
          hintText: "Password",
          //PIcn: Icon(Icons.wifi_password),
          SIcn: Icon(Icons.remove_red_eye),
        ),
        SizedBox(height: TSize.spaceBtSections),
        //Remember me forget password
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Checkbox
            Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                Text(TText.rememberHe,
                    style: Theme.of(context).textTheme.bodyMedium)
              ],
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Forget Password",
                  style: Theme.of(context).textTheme.bodyMedium,
                ))
          ],
        ),
        //SignIN button
        SizedBox(height: TSize.spaceBtSections),
        custom_eleveted(
          label: TText.signin,
          onPressed: () {
            Get.to(() => navigationBar());
          },
        ),

        SizedBox(height: TSize.spaceBtSections),
        custom_outlinebutton(
          label: TText.createAccount,
          onPressed: () {
            Get.to(() => Signup());
          },
        ),

        SizedBox(height: TSize.spaceBtSections),
      ],
    ));
  }
}
