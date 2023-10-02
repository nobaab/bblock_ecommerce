// ignore_for_file: library_private_types_in_public_api

import 'package:bblock_ecommerce/constants/colors.dart';
import 'package:bblock_ecommerce/features/cart/cart_screen.dart';
import 'package:bblock_ecommerce/features/home/home_screen.dart';
import 'package:bblock_ecommerce/features/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class CustomBottomNavigation extends StatefulWidget {
  final int currentIndex;

  const CustomBottomNavigation({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  @override
  _CustomBottomNavigationState createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeOut,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _animateScale() {
    if (_animationController.isCompleted) {
      _animationController.reverse();
    } else {
      _animationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      currentIndex: widget.currentIndex,
      backgroundColor: Colors.white,
      selectedItemColor: mainColor,
      unselectedItemColor: bTextBlackColor,
      onTap: (p0) {
        _animateScale();
        if (p0 == 0) {
          Navigator.pushNamed(context, HomeScreenUI.id);
        } else if (p0 == 1) {
          Navigator.pushNamed(context, "");
        } else if (p0 == 2) {
          Navigator.pushNamed(context, CartScreenUI.id);
        } else if (p0 == 3) {
          Navigator.pushNamed(context, ProfileScreenUI.id);
        }
      },
      items: [
        SalomonBottomBarItem(
          icon: ScaleTransition(
            scale: _scaleAnimation,
            child: const Icon(Icons.home_outlined),
          ),
          title: const Text("Home"),
        ),
        SalomonBottomBarItem(
          icon: ScaleTransition(
            scale: _scaleAnimation,
            child: const Icon(Icons.favorite_border_outlined),
          ),
          title: const Text("Favorites"),
        ),
        SalomonBottomBarItem(
          icon: ScaleTransition(
            scale: _scaleAnimation,
            child: const Icon(Icons.shopping_cart_outlined),
          ),
          title: const Text("Cart"),
        ),
        SalomonBottomBarItem(
          icon: ScaleTransition(
            scale: _scaleAnimation,
            child: const Icon(Icons.person_outline_outlined),
          ),
          title: const Text("Profile"),
        ),
      ],
    );
  }
}
