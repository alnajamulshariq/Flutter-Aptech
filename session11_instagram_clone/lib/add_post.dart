import 'package:flutter/material.dart';
import 'package:session11_instagram_clone/bottom_nav.dart';

class AddPost extends StatelessWidget {
  const AddPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Add Post Here ....."),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNav(currentIndex: 2),
    );
  }
}
