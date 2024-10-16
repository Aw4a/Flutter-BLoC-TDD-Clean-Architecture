import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_tdd_clean_architecture/core/common/views/page_under_construction.dart';
import 'package:flutter_bloc_tdd_clean_architecture/core/services/injection_container.dart';
import 'package:flutter_bloc_tdd_clean_architecture/src/on_boarding/presentations/cubit/on_boarding_cubit.dart';
import 'package:flutter_bloc_tdd_clean_architecture/src/on_boarding/presentations/views/on_boarding_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OnBoardingScreen.routeName:
      return _pageBuilder(
        (_) => BlocProvider(
          create: (_) => sl<OnBoardingCubit>(),
          child: const OnBoardingScreen(),
        ),
        settings: settings,
      );
    default:
      return _pageBuilder(
        (_) => const PageUnderConstruction(),
        settings: settings,
      );
  }
}

PageRouteBuilder<dynamic> _pageBuilder(
  Widget Function(BuildContext) page, {
  required RouteSettings settings,
}) {
  return PageRouteBuilder(
    settings: settings,
    transitionsBuilder: (_, animation, __, child) => FadeTransition(
      opacity: animation,
      child: child,
    ),
    pageBuilder: (context, _, __) => page(context),
  );
}
