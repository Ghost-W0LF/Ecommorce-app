// ignore_for_file: prefer_const_constructors

import 'package:ecomorce/common/Widgets/custom_textFormField.dart';
import 'package:ecomorce/features/authentication/model/login_controller.dart';
import 'package:ecomorce/utils/constants/colors.dart';
import 'package:ecomorce/utils/constants/sizes.dart';
import 'package:ecomorce/utils/constants/text_String.dart';
import 'package:ecomorce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class form extends StatelessWidget {
  const form({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool dark = THelperFunction.isDarkMode(context);
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
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: dark ? Tcolors.primary : Tcolors.accent,
                minimumSize: Size(double.infinity, 55)),
            onPressed: () {},
            child: Text(
              TText.signin,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            )),
        SizedBox(height: TSize.spaceBtSections),

        ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 55)),
            onPressed: () => LoginController.instance.createAccount(),
            child: Text(
              TText.createAccount,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            )),
        SizedBox(height: TSize.spaceBtSections),
      ],
    ));
  }
}
