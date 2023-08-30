import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizz_app/screen/loginscreen.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../gen/localization/l10n.dart';
import 'intro.dart';

class Splash extends StatefulWidget {
  static const String routeName = "/";
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer(const Duration(seconds: 2), () {
      _checkFirstTime();
    });
  }

  _checkFirstTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isFirstTime = prefs.getBool("screen");
    // ignore: avoid_print
    print(isFirstTime);
    if (isFirstTime == null) {
      // ignore: use_build_context_synchronously
      Navigator.of(context)
          .pushNamedAndRemoveUntil(Introduce.routeName, (route) => false);
    } else {
      // ignore: use_build_context_synchronously
      Navigator.of(context)
          .pushNamedAndRemoveUntil(LoginScreen.routeName, (route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        onPressed: () {
          Navigator.of(context)
              .pushNamedAndRemoveUntil("/login", (route) => false);
        },
        child: Column(
          children: [
            const SizedBox(height: 243),
            Image.asset("asset/images/Splash.png"),
            const SizedBox(height: 16),
            Center(
                child: Text(
              Str.of(context).next,
              style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff3C3A36)),
            )),
          ],
        ),
      ),
    );
  }
}
