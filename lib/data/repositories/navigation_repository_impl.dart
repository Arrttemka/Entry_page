import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../domain/repositories/navigation_repository.dart';

class NavigationRepositoryImpl implements NavigationRepository {
  final GlobalKey<NavigatorState> navigatorKey;

  NavigationRepositoryImpl({required this.navigatorKey});

  @override
  Future<void> navigateToAuth() async {
    navigatorKey.currentState?.pushReplacementNamed('/auth');
  }

  @override
  Future<bool> isFirstLaunch() async {
    final prefs = await SharedPreferences.getInstance();
    bool isFirstLaunch = prefs.getBool('first_launch') ?? true;

    if (isFirstLaunch) {
      await prefs.setBool('first_launch', false);
    }

    return isFirstLaunch;
  }
}