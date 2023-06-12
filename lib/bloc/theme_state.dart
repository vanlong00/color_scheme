part of 'theme_bloc.dart';

abstract class ThemeState extends Equatable {
  final ThemeData themeData;

  const ThemeState({required this.themeData});
}

class ThemeInitial extends ThemeState {
  const ThemeInitial({required super.themeData});

  @override
  List<Object?> get props => [super.themeData];
}

class ThemeUpdate extends ThemeState {
  const ThemeUpdate({required super.themeData});

  @override
  List<Object?> get props => [super.themeData];
}
