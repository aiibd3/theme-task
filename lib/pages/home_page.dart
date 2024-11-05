import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:theme_delete/main.dart';
import 'package:theme_delete/theme/theme_cubit.dart';

import '../component/box.dart';
import '../component/button.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  var logger = Logger();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Box(
          color: Theme.of(context).colorScheme.primary,
          child: Center(
            child: Button(
              color: Theme.of(context).colorScheme.secondary,
              onTap: () {
                context.read<ThemeCubit>().changeTheme();
                print("object");
                logger.t("Logger is working!");
              },
            ),
          ),
        ),
      ),
    );
  }
}
