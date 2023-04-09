import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xFF3b5998);
const PrimaryColorLight = const Color(0xFF3b5998);
const PrimaryColorDark = const Color(0xFF3b5998);

const SecondaryColor = const Color(0xFF8b9dc3);
const SecondaryColorLight = const Color(0xFF8b9dc3);
const SecondaryColorDark = const Color(0xFF8b9dc3);

const Background = const Color(0xFFfffdf7);
const TextColor = const Color(0xFF000000);

class MyTheme {
  static final ThemeData defaultTheme = _buildMyTheme();

  static ThemeData _buildMyTheme() {
    final ThemeData base = ThemeData.light();

    return base.copyWith(
      accentColor: SecondaryColor,
      accentColorBrightness: Brightness.dark,
      primaryColor: PrimaryColor,
      primaryColorDark: PrimaryColorDark,
      primaryColorLight: PrimaryColorLight,
      primaryColorBrightness: Brightness.dark,
      buttonTheme: base.buttonTheme.copyWith(
        buttonColor: SecondaryColor,
        textTheme: ButtonTextTheme.primary,
      ),
      scaffoldBackgroundColor: Background,
      cardColor: Background,
      backgroundColor: Background,
      textTheme: base.textTheme.copyWith(
          titleLarge: base.textTheme.titleLarge!.copyWith(color: TextColor),
          bodyLarge: base.textTheme.bodyLarge!.copyWith(color: TextColor),
          bodyMedium: base.textTheme.bodyMedium!.copyWith(color: TextColor)),
    );
  }
}
