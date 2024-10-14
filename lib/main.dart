import 'package:flutter/material.dart';
import 'package:flutter_bloc_tdd_clean_architecture/core/res/colors.dart' as c;
import 'package:flutter_bloc_tdd_clean_architecture/core/res/font.dart';
import 'package:flutter_bloc_tdd_clean_architecture/core/services/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter BLoC',
      theme: ThemeData(
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: Fonts.poppins,
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
        ),
        colorScheme: ColorScheme.fromSwatch(accentColor: c.Colors.primaryBase),
      ),
      onGenerateRoute: generateRoute,
    );
  }
}
