import 'package:flutter/material.dart';

const _seedColor = Colors.deepPurple;

final _lightColorScheme = ColorScheme.fromSeed(
  seedColor: _seedColor,
  brightness: Brightness.light,
);

final _darkColorScheme = ColorScheme.fromSeed(
  seedColor: _seedColor,
  brightness: Brightness.dark,
);

final _lightTextTheme = ThemeData(brightness: Brightness.light).textTheme;

final _darkTextTheme = ThemeData(brightness: Brightness.dark).textTheme;

final ThemeData lightTheme = ThemeData(
  colorScheme: _lightColorScheme,
  textTheme: _lightTextTheme,
  appBarTheme: AppBarTheme(
    backgroundColor: _lightColorScheme.surfaceContainer,
    foregroundColor: _lightColorScheme.onSurface,
  ),
  useMaterial3: true,
);

final ThemeData darkTheme = ThemeData(
  colorScheme: _darkColorScheme,
  textTheme: _darkTextTheme,
  appBarTheme: AppBarTheme(
    backgroundColor: _darkColorScheme.surfaceContainer,
    foregroundColor: _darkColorScheme.onSurface,
  ),
  useMaterial3: true,
);
