import 'package:bblock_ecommerce/constants/colors.dart';
import 'package:bblock_ecommerce/features/splash/onboarding_screen.dart';
import 'package:flutter/material.dart';

import 'package:bblock_ecommerce/routing/app_routers.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(MyApp(
        appRouter: AppRouter(),
      )));
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.appRouter,
  }) : super(key: key);
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: bTextWhiteColor),
        useMaterial3: false,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      home: const OnBordingScreenUI(),
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
