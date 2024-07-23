import 'package:ecomorce/utils/constants/colors.dart';
import 'package:ecomorce/utils/theme/custome_theme/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Tcolors.darkGrey,
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Tcolors.LightGrey,
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
    
  );
}
