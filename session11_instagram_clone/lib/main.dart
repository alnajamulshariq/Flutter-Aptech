import 'package:flutter/material.dart';
import 'package:session11_instagram_clone/add_post.dart';
import 'package:session11_instagram_clone/home.dart';
import 'package:session11_instagram_clone/reels.dart';
import 'package:session11_instagram_clone/search.dart';
import 'package:session11_instagram_clone/profile.dart';
import 'splash.dart';

void main() {
  runApp(InstagramApp());
}

class InstagramApp extends StatelessWidget {
  const InstagramApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instagram",
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(),
        "/home": (context) => HomeScreen(),
        "/search": (context) => SearchPage(),
        "/add_post": (context) => AddPost(),
        "/reels": (context) => ReelsPage(),
        "/profile": (context) => ProfilePage(),
      },
    );
  }
}
