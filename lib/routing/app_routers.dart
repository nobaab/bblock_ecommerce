import 'package:bblock_ecommerce/features/home/home_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreenUI.id:
        return MaterialPageRoute(
          builder: (_) => const HomeScreenUI(),
        );
      default:
        return null;
    }
  }
}
