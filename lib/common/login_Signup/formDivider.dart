import 'package:flutter/material.dart';

class TFormDivider extends StatelessWidget {
   const TFormDivider({super.key, required this.formDividerText});
  final String formDividerText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
     const   Expanded(
          child: Divider(
            height: 2,
            indent: 60,
            endIndent: 5,
          ),
        ),
       Text(formDividerText,style: Theme.of(context).textTheme.bodyMedium,),
       const Expanded(
          child: Divider(
            height: 2,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
