import 'package:color_scheme/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../app_theme.dart';
import '../bloc/theme_bloc.dart';

class PreferencePage extends StatelessWidget {
  const PreferencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferences'),
      ),
      body: Column(
        children: [
          ...(AppTheme.values).map((itemAppTheme) {
            return Card(
              color: AppThemes.appThemeData[itemAppTheme]?.colorScheme.primary,
              child: ListTile(
                title: Text(
                  itemAppTheme.toString(),
                  style: AppThemes
                      .appThemeData[itemAppTheme]?.textTheme.bodyMedium
                      ?.copyWith(
                          color: AppThemes.appThemeData[itemAppTheme]
                              ?.colorScheme.onPrimary),
                ),
                onTap: () =>
                    context.read<ThemeCubit>().changeTheme(itemAppTheme),
              ),
            );
          }),
        ],
      ),
    );
  }
}
