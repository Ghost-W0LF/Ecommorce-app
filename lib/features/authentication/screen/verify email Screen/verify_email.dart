import 'package:ecomorce/common/Widgets/custom_button.dart';
import 'package:ecomorce/common/sucess_Screen.dart';
import 'package:ecomorce/features/authentication/screen/screen_login/login.dart';
import 'package:ecomorce/utils/constants/imagge_string.dart';
import 'package:ecomorce/utils/constants/sizes.dart';
import 'package:ecomorce/utils/constants/text_String.dart';

import 'package:ecomorce/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({super.key});

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => loginScreen()),
              icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              Image(
                height: THelperFunction.screenHeight() * 0.3,
                width: double.infinity,
                image: const AssetImage(TImage.animation1),
              ),
              Text(
                TText.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSize.spaceBtSections),
              Text("Support@gmail.com",
                  style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(height: TSize.sm),
              Text(TText.confirmEmailSubTitle,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(height: TSize.spaceBtSections),
              custom_eleveted(
                  label: "Contunie",
                  onPressed: () => Get.to(() => sucessScreen())),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    TText.resendEmail,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                  ))
            ],
          )),
    );
  }
}
