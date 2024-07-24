import 'package:ecomorce/utils/constants/colors.dart';
import 'package:ecomorce/utils/constants/text_String.dart';
import 'package:flutter/material.dart';

class customTextFormField extends StatelessWidget {
  customTextFormField({
    super.key,
    required this.labelText,
    this.obsText = false,
    this.hintText,
    this.SIcn,
    this.PIcn,
  });
  bool obsText;
  final String labelText;
  String? hintText;
  Icon? SIcn;
  Icon? PIcn;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsText,
      decoration: InputDecoration(
        prefixIcon: PIcn,
        suffixIcon: SIcn,
        labelText: labelText,
        hintMaxLines: 4,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
