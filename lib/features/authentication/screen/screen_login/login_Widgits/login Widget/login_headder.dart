
import 'package:ecomorce/utils/constants/imagge_string.dart';
import 'package:ecomorce/utils/constants/sizes.dart';
import 'package:ecomorce/utils/constants/text_String.dart';
import 'package:ecomorce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
class headder_login extends StatelessWidget {
  const headder_login({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: TSize.appBarHeight + 20,
          ),
          //Header
          //Logo Title Subtitle
          child: Image(
              height: THelperFunction.screenHeight() * 0.1,
              width: THelperFunction.screenWidth() * 0.3,
              image: AssetImage(TImage.logo)),
        ),
        SizedBox(height: TSize.sm),
        Text(
          TText.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.start,
        ),
        SizedBox(height: TSize.sm),
        Text(
          TText.loginSubtitle,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
