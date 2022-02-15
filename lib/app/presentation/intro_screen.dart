import 'package:flutter/material.dart';
import 'package:middle_aged_dating/app/core/constants/app_assets.dart';
import 'package:middle_aged_dating/app/features/login/view/login_screen.dart';

class IntroScreen extends StatefulWidget {
  static const String routeName = '/intro_screen';
  const IntroScreen({Key? key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    _navigatetoLogin();
    super.initState();
  }

  _navigatetoLogin() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Image.asset(
          AppAssets.intoScreenImage,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
