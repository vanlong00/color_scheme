import 'package:flutter/material.dart';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF446813),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFC4F18C),
  onPrimaryContainer: Color(0xFF102000),
  secondary: Color(0xFF586249),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFDCE7C7),
  onSecondaryContainer: Color(0xFF161E0B),
  tertiary: Color(0xFF386663),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFBCECE7),
  onTertiaryContainer: Color(0xFF00201E),
  error: Color(0xFFBA1A1A),
  onError: Color(0xFFFFFFFF),
  errorContainer: Color(0xFFFFDAD6),
  onErrorContainer: Color(0xFF410002),
  outline: Color(0xFF75796C),
  background: Color(0xFFFDFCF5),
  onBackground: Color(0xFF1B1C18),
  surface: Color(0xFFFBFAF2),
  onSurface: Color(0xFF1B1C18),
  surfaceVariant: Color(0xFFE1E4D5),
  onSurfaceVariant: Color(0xFF44483D),
  inverseSurface: Color(0xFF30312C),
  onInverseSurface: Color(0xFFF2F1E9),
  inversePrimary: Color(0xFFA9D473),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF446813),
  outlineVariant: Color(0xFFC5C8BA),
  scrim: Color(0xFF000000),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFA9D473),
  onPrimary: Color(0xFF1F3700),
  primaryContainer: Color(0xFF304F00),
  onPrimaryContainer: Color(0xFFC4F18C),
  secondary: Color(0xFFC0CBAC),
  onSecondary: Color(0xFF2A331E),
  secondaryContainer: Color(0xFF404A33),
  onSecondaryContainer: Color(0xFFDCE7C7),
  tertiary: Color(0xFFA0D0CB),
  onTertiary: Color(0xFF003734),
  tertiaryContainer: Color(0xFF1F4E4B),
  onTertiaryContainer: Color(0xFFBCECE7),
  error: Color(0xFFFFB4AB),
  onError: Color(0xFF690005),
  errorContainer: Color(0xFF93000A),
  onErrorContainer: Color(0xFFFFDAD6),
  outline: Color(0xFF8F9285),
  background: Color(0xFF1B1C18),
  onBackground: Color(0xFFE3E3DB),
  surface: Color(0xFF121410),
  onSurface: Color(0xFFC7C7C0),
  surfaceVariant: Color(0xFF44483D),
  onSurfaceVariant: Color(0xFFC5C8BA),
  inverseSurface: Color(0xFFE3E3DB),
  onInverseSurface: Color(0xFF1B1C18),
  inversePrimary: Color(0xFF446813),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFA9D473),
  outlineVariant: Color(0xFF44483D),
  scrim: Color(0xFF000000),
);

extension ColorSchemeExtension on ColorScheme {
  static ColorScheme fromJson(Map<String, dynamic> json) {
    return ColorScheme(
      primary: Color(json['primary']),
      secondary: Color(json['secondary']),
      surface: Color(json['surface']),
      background: Color(json['background']),
      error: Color(json['error']),
      onPrimary: Color(json['onPrimary']),
      onSecondary: Color(json['onSecondary']),
      onSurface: Color(json['onSurface']),
      onBackground: Color(json['onBackground']),
      onError: Color(json['onError']),
      brightness: json['brightness'] == 'dark' ? Brightness.dark : Brightness.light,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'primary': primary.value,
      'secondary': secondary.value,
      'surface': surface.value,
      'background': background.value,
      'error': error.value,
      'onPrimary': onPrimary.value,
      'onSecondary': onSecondary.value,
      'onSurface': onSurface.value,
      'onBackground': onBackground.value,
      'onError': onError.value,
      'brightness': brightness == Brightness.dark ? 'dark' : 'light',
    };
  }
}

