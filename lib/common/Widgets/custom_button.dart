// ignore_for_file: camel_case_types, must_be_immutable

import 'package:ecomorce/utils/constants/colors.dart';

import 'package:ecomorce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class custom_eleveted extends StatelessWidget {
  custom_eleveted({
    super.key,
    required this.label,
    required this.onPressed,
  });
  final String label;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final bool dark = THelperFunction.isDarkMode(context);
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: dark ? Tcolors.primary : Tcolors.accent,
            minimumSize: Size(double.infinity, 55)),
        onPressed: onPressed,
        child: Text(
          label,
          style: Theme.of(context).textTheme.headlineSmall,
          textAlign: TextAlign.center,
        ));
  }
}
