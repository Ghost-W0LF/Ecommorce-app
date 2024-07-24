import 'package:ecomorce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TFormDivider extends StatelessWidget {
  const TFormDivider(
      {super.key, required this.formDividerText, required this.ht});
  final String formDividerText;
  final double ht;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            color: Tcolors.LightGrey,
            height: 2,
            indent: ht,
            endIndent: 5,
          ),
        ),
        Text(
          formDividerText,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Expanded(
          child: Divider(
            color: Tcolors.LightGrey,
            height: 2,
            indent: 5,
            endIndent: ht,
          ),
        ),
      ],
    );
  }
}
