import 'package:flutter/material.dart';
import 'package:session11_instagram_clone/bottom_nav.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Seacrh Here ....."),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNav(currentIndex: 1),
    );
  }
}
