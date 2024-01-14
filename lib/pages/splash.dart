import 'dart:async';

import 'package:flutter/material.dart';
import 'package:prak_mobpro/pages/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    //delay 3 detik
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const LoginPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.asset(
                'assets/Logo Gudang.png',
              ),
              height: 100,
              width: 100,
            ), //nanti logonya ganti aja
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(
              color: Colors.orangeAccent,
              strokeWidth: 4,
            )
          ],
        ),
      ),
    );
  }
}
