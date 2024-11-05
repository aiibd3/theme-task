part of 'theme_cubit.dart';

@immutable
sealed class ThemeState {
  final ThemeData themeData;

  const ThemeState(this.themeData);
}

class ThemeLight extends ThemeState {
  ThemeLight() : super(lightTheme);
}

class ThemeDark extends ThemeState {
  ThemeDark() : super(darkTheme);
}
