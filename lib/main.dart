import 'package:flutter/material.dart';
import 'package:flutter_bloc_tdd_clean_architecture/core/res/colors.dart';
import 'package:flutter_bloc_tdd_clean_architecture/core/res/font.dart';
import 'package:flutter_bloc_tdd_clean_architecture/core/services/injection_container.dart';
import 'package:flutter_bloc_tdd_clean_architecture/core/services/router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter BLoC',
          theme: ThemeData(
            useMaterial3: true,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            fontFamily: Fonts.poppins,
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: const AppBarTheme(
              color: Colors.transparent,
            ),
            colorScheme: ColorScheme.fromSwatch(
              accentColor: AppColors.primaryBase,
            ),
          ),
          onGenerateRoute: generateRoute,
        );
      },
    );
  }
}
