import 'package:bblock_ecommerce/features/authentication/signin/sign_in_screen.dart';
import 'package:bblock_ecommerce/features/authentication/signup/sign_up_screen.dart';
import 'package:bblock_ecommerce/features/home/home_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreenUI.id:
        return MaterialPageRoute(
          builder: (_) => const HomeScreenUI(),
        );
      case SignInScreenUI.id:
        return MaterialPageRoute(
          builder: (_) => const SignInScreenUI(),
        );
      case SignUpScreenUI.id:
        return MaterialPageRoute(
          builder: (_) => const SignUpScreenUI(),
        );
      default:
        return null;
    }
  }
}
