import 'package:flutter/material.dart';
import 'package:ses12_e_commerce/splash.dart';

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
