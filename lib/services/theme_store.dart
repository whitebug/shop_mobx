import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'theme_store.g.dart';

class ThemeStore = _ThemeStore with _$ThemeStore;

enum ThemeSwitch { light, dark }

abstract class _ThemeStore with Store {
  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.red,
    iconTheme: const IconThemeData(
      color: Colors.red,
    ),
    cardColor: Colors.white,
    scaffoldBackgroundColor: Colors.grey[200],
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      headline2: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      bodyText1: TextStyle(fontSize: 16.0),
      subtitle1: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.red,
      ),
      subtitle2: TextStyle(fontSize: 14.0),
    ),
  );

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.red,
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      bodyText1: TextStyle(fontSize: 16.0),
    ),
  );

  @observable
  ThemeData themeData = lightTheme;

  @action
  changeTheme({required ThemeSwitch theme}) {
    switch (theme) {
      case ThemeSwitch.light:
        themeData = lightTheme;
        break;
      case ThemeSwitch.dark:
        themeData = darkTheme;
        break;
    }
  }
}
