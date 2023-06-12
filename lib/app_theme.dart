import 'package:flutter/material.dart';

import 'color_schemes.g.dart';

import 'package:flutter/material.dart';

enum AppTheme {
  GreenLight,
  GreenDark,
}

class AppThemes {
  static final Map<AppTheme, ThemeData> appThemeData = {
    AppTheme.GreenLight: _createTheme(lightColorScheme),
    AppTheme.GreenDark: _createTheme(darkColorScheme),
  };

  static ThemeData _createTheme(ColorScheme colorScheme) {
    return ThemeData(
      // useMaterial3: true,
      fontFamily: 'Roboto',
      ///colors
      colorScheme: colorScheme,
      canvasColor: colorScheme.surface,
      // scaffoldBackgroundColor: colorScheme.primary,
      indicatorColor: colorScheme.primary,

      appBarTheme: const AppBarTheme(elevation: 0.0),
    );
  }
}

extension AppThemesExtentions on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  Color get primaryColor => colorScheme.primary;

  Color get primaryContainerColor => colorScheme.primaryContainer;

  Color get onPrimaryColor => colorScheme.onPrimary;

  Color get onPrimaryContainerColor => colorScheme.onPrimaryContainer;

  Color get surfaceColor => colorScheme.surface;

  Color get onSurfaceColor => colorScheme.onSurface;

  Color get onSurfaceVariant => colorScheme.onSurfaceVariant;

  Color get backgroundColor => colorScheme.background;

  Color get outlineColor => colorScheme.outline;
}

extension ThemeDataExtension on ThemeData {
  static ThemeData fromJson(Map<String, dynamic> json) {
    final colorScheme = ColorSchemeExtension.fromJson(json['colorScheme']);
    return ThemeData(
      // Extract the desired properties from the JSON and create a new ThemeData instance
      // primaryColor: Color(json['primaryColor']),
      colorScheme: colorScheme,
      canvasColor: json['canvasColor'],
      scaffoldBackgroundColor: json['scaffoldBackgroundColor'],
      indicatorColor: json['indicatorColor'],
      // Add more properties based on your requirements
      // Example: brightness: json['brightness'] == 'dark' ? Brightness.dark : Brightness.light,
    );
  }

  Map<String, dynamic> toJson() {
    final colorSchemeJson = colorScheme.toJson();
    return {
      'colorScheme': colorSchemeJson,
      'canvasColor': canvasColor.value,
      'scaffoldBackgroundColor': scaffoldBackgroundColor.value,
      'indicatorColor': indicatorColor.value,
      // Add more properties based on your requirements
      // Example: 'brightness': brightness == Brightness.dark ? 'dark' : 'light',
    };
  }
}
