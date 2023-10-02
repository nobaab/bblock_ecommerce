import 'package:bblock_ecommerce/features/authentication/signin/sign_in_screen.dart';
import 'package:bblock_ecommerce/features/authentication/signup/sign_up_screen.dart';
import 'package:bblock_ecommerce/features/cart/cart_screen.dart';
import 'package:bblock_ecommerce/features/categories/all_categories_screen.dart';
import 'package:bblock_ecommerce/features/categories/categories_details_screen.dart';
import 'package:bblock_ecommerce/features/home/home_screen.dart';
import 'package:bblock_ecommerce/features/profile/profile_screen.dart';
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

      case AllCategoriesScrrenUI.id:
        return MaterialPageRoute(
          builder: (_) => const AllCategoriesScrrenUI(),
        );
      case CategoriesDetailsUi.id:
        return MaterialPageRoute(
          builder: (_) => const CategoriesDetailsUi(),
        );
      case ProfileScreenUI.id:
        return MaterialPageRoute(
          builder: (_) => const ProfileScreenUI(),
        );
      case CartScreenUI.id:
        return MaterialPageRoute(
          builder: (_) => const CartScreenUI(),
        );
      default:
        return null;
    }
  }
}
