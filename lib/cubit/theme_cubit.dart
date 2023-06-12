import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../app_theme.dart';

part 'theme_state.dart';

class ThemeCubit extends HydratedCubit<ThemeState> {
  ThemeCubit()
      : super(ThemeInitial(
            themeData: AppThemes.appThemeData[AppTheme.GreenLight]!));

  void changeTheme(AppTheme appTheme) =>
      emit(ThemeUpdate(themeData: AppThemes.appThemeData[appTheme]!));

  @override
  ThemeState? fromJson(Map<String, dynamic> json) {
    return ThemeUpdate(
        themeData: ThemeDataExtension.fromJson(json['themeData']));
  }

  @override
  Map<String, dynamic>? toJson(ThemeState state) =>
      {'themeData': state.themeData.toJson()};
}
