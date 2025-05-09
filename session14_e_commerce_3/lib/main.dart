import 'package:flutter/material.dart';

import 'screens/users/splash.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "E-Commerce",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
