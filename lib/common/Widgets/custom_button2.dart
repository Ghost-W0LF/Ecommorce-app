// ignore_for_file: must_be_immutable

import 'package:ecomorce/utils/constants/colors.dart';
import 'package:ecomorce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class custom_outlinebutton extends StatelessWidget {
  custom_outlinebutton({
    super.key,
    required this.label,
    required this.onPressed,
  });
  final String label;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    bool dark = THelperFunction.isDarkMode(context);
    return OutlinedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: dark ? Tcolors.accent : Tcolors.darkGrey,
            minimumSize: Size(double.infinity, 55)),
        onPressed: onPressed,
        child: Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ));
  }
}
