// ignore_for_file: prefer_const_constructors

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
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.arrow_right),
            labelText: TText.email,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        SizedBox(height: TSize.spaceBtSections),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.remove_red_eye),
            labelText: TText.password,
            hintMaxLines: 4,
            hintText: "Your password",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          ),
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
            onPressed: () {},
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
