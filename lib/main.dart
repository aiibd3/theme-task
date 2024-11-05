import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:theme_delete/pages/home_page.dart';
import 'package:theme_delete/theme/theme_cubit.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => ThemeCubit(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return ResponsiveSizer(builder: (context, orientation, screenType) {
          return MaterialApp(
            home:  HomePage(),
            debugShowCheckedModeBanner: false,
            theme: state.themeData,
          );
        });
      },
    );
  }
}
