import 'package:flutter/material.dart';
import 'package:middle_aged_dating/app/features/register/signup_screen.dart';
import 'dart:developer' as devtools show log;

import 'package:middle_aged_dating/app/presentation/intro_screen.dart';
import 'package:middle_aged_dating/app/features/login/view/login_screen.dart';
import 'package:page_transition/page_transition.dart';

class RouteHandler {
  static Route<dynamic> handleRoute(RouteSettings settings) {
    final routeName = settings.name;
    devtools.log('Navigating to route $routeName');
    final arg = settings.arguments;
    switch (routeName) {
      case IntroScreen.routeName:
        return MaterialPageRoute(
            builder: (_) => const IntroScreen(), settings: settings);
      case LoginScreen.routeName:
        return PageTransition(
            child: const LoginScreen(), type: PageTransitionType.fade);
      case SignUpScreen.routeName:
        return PageTransition(
            child: const SignUpScreen(), type: PageTransitionType.fade);
    }
    return MaterialPageRoute(
        builder: (_) => const Text('Cannot found current route'));
  }
}
