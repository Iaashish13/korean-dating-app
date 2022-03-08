import 'package:flutter/material.dart';
import 'package:middle_aged_dating/app/features/femalechat/views/female_chat_screen.dart';
import 'package:middle_aged_dating/app/features/malechat/views/male_chat_screen.dart';
import 'package:middle_aged_dating/app/features/register/views/another_signup.dart';
import 'package:middle_aged_dating/app/features/register/views/signup_screen.dart';
import 'package:middle_aged_dating/app/presentation/agree_terms.dart';
import 'dart:developer' as devtools show log;

import 'package:middle_aged_dating/app/presentation/intro_screen.dart';
import 'package:middle_aged_dating/app/features/login/view/login_screen.dart';
import 'package:middle_aged_dating/app/presentation/service_information.dart';
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
            child: const LoginScreen(),
            type: PageTransitionType.fade,
            settings: settings);
      case SignUpScreen.routeName:
        return PageTransition(
            child: const SignUpScreen(),
            type: PageTransitionType.fade,
            settings: settings);
      case AnotherSignUpScreen.routeName:
        return PageTransition(
            child: const AnotherSignUpScreen(),
            type: PageTransitionType.fade,
            settings: settings);
      case MaleChatScreen.routeName:
        return PageTransition(
            child: const MaleChatScreen(),
            settings: settings,
            type: PageTransitionType.fade);
      case FemaleChatScreen.routeName:
        return PageTransition(
            child: const FemaleChatScreen(),
            settings: settings,
            type: PageTransitionType.fade);
      case AgreeTermsScreen.routeName:
        return PageTransition(
            child: const AgreeTermsScreen(),
            settings: settings,
            type: PageTransitionType.leftToRight);
      case ServiceInformationScreen.routeName:
        return PageTransition(
            child: const ServiceInformationScreen(),
            type: PageTransitionType.leftToRight,
            settings: settings);
    }
    return MaterialPageRoute(
        builder: (_) => const Text('Cannot found current route'));
  }
}
