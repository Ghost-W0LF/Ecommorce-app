import 'package:ecomorce/utils/constants/colors.dart';
import 'package:ecomorce/utils/constants/text_String.dart';
import 'package:ecomorce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class sectionTitel extends StatelessWidget {
  const sectionTitel({super.key, this.TextColor, required this.label});
  final Color? TextColor;
  final String label;
  @override
  Widget build(BuildContext context) {
    bool dark = THelperFunction.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Text(
        label,
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .copyWith(color: TextColor),
      ),
    );
  }
}
