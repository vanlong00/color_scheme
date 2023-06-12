import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../app_theme.dart';

part 'theme_event.dart';

part 'theme_state.dart';

class ThemeBloc extends HydratedBloc<ThemeEvent, ThemeState> {
  ThemeBloc()
      : super(ThemeInitial(themeData: AppThemes.appThemeData[AppTheme.GreenLight]!)) {
    on<ThemeEvent>((event, emit) {});
    on<ThemeChanged>((event, emit) {
      emit(ThemeUpdate(themeData: AppThemes.appThemeData[event.theme]!));
    });
  }

  @override
  ThemeState? fromJson(Map<String, dynamic> json) {
    return ThemeUpdate(themeData: ThemeDataExtension.fromJson(json['themeData']));
  }

  @override
  Map<String, dynamic>? toJson(ThemeState state) => {'themeData': state.themeData.toJson()};
}
