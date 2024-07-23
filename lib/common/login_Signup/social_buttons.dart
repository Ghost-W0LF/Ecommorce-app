import 'package:ecomorce/utils/constants/colors.dart';
import 'package:ecomorce/utils/constants/imagge_string.dart';
import 'package:ecomorce/utils/constants/sizes.dart';

import 'package:flutter/material.dart';

class social_login extends StatelessWidget {
  const social_login({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border:
                  Border.all(color: dark ? Tcolors.accent : Tcolors.primary)),
          child: IconButton(
              onPressed: () {},
              icon: Image(
                height: TSize.iconmd,
                width: TSize.iconmd,
                image: AssetImage(TImage.facebook),
              )),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border:
                  Border.all(color: dark ? Tcolors.accent : Tcolors.primary)),
          child: IconButton(
              onPressed: () {},
              icon: Image(
                height: TSize.iconmd,
                width: TSize.iconmd,
                image: AssetImage(TImage.google),
              )),
        ),
      ],
    );
  }
}
