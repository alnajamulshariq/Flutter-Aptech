import 'package:flutter/material.dart';
import 'home.dart';
import 'contact.dart';
import 'profile.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        "/contact": (context) => MyContact(),
        "/profile": (context) => ProfilePage(),
      },
    ),
  );
}
