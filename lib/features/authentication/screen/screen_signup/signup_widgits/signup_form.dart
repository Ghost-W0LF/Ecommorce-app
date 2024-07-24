import 'package:ecomorce/common/Widgets/custom_textFormField.dart';
import 'package:ecomorce/utils/constants/colors.dart';
import 'package:ecomorce/utils/constants/sizes.dart';
import 'package:ecomorce/utils/constants/text_String.dart';
import 'package:flutter/material.dart';

class signup_form extends StatelessWidget {
  const signup_form({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(TText.signupTitle,
              style: Theme.of(context).textTheme.headlineMedium),
          SizedBox(
              height: TSize.xl), // Optional: Add spacing between title and form
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Email Field
              Flexible(
                child: customTextFormField(
                  PIcn: Icon(Icons.person_2_sharp),
                  labelText: TText.firstName,
                ),
              ),
              SizedBox(width: 16), // Optional: Add spacing between fields
              // Password Field
              Flexible(
                child: customTextFormField(
                  PIcn: Icon(Icons.person_2_sharp),
                  labelText: TText.lastName,
                ),
              ),
            ],
          ),
          SizedBox(height: TSize.spaceBtwitems),
          customTextFormField(
            labelText: TText.username,
            PIcn: Icon(Icons.person_4_sharp),
            obsText: false,
          ),
          SizedBox(height: TSize.spaceBtwitems),
          customTextFormField(
            labelText: TText.email,
            PIcn: Icon(Icons.email_outlined),
            obsText: false,
          ),
          SizedBox(height: TSize.spaceBtwitems),
          customTextFormField(
            labelText: TText.phoneNo,
            PIcn: Icon(Icons.phone_iphone),
            obsText: false,
          ),
          SizedBox(height: TSize.spaceBtwitems),
          customTextFormField(
            labelText: TText.password,
            PIcn: Icon(Icons.password_outlined),
            SIcn: Icon(Icons.remove_red_eye_outlined),
            obsText: false,
          ),
          SizedBox(height: TSize.spaceBtwitems),
          Row(
            children: [
              Checkbox(value: true, onChanged: (value) {}),
              Text.rich(
                TextSpan(children: [
                  TextSpan(
                      text: '${TText.agreeTo} ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: '${TText.privacyPolicy} ',
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? Tcolors.primary : Tcolors.accent,
                          fontWeightDelta: 3)),
                  TextSpan(
                      text: '${"and"} ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: '${TText.privacyPolicy}',
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? Tcolors.primary : Tcolors.accent,
                          fontWeightDelta: 3)),
                ]),
              )
            ],
          ),
          SizedBox(height: TSize.spaceBtwitems),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 55)),
              onPressed: () {},
              child: Text(
                TText.createAccount,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              )),
        ],
      ),
    );
  }
}
