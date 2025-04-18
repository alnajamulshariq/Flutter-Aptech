import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final int currentIndex; // Step 1: Variable declare karo

  const BottomNav({
    super.key,
    required this.currentIndex,
  }); // Step 2: Constructor mein initialize karo

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      backgroundColor: const Color.fromARGB(255, 245, 79, 134),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
          icon: Icon(Icons.contact_page),
          label: "Contact",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ],
      onTap: (int index) {
        if (index == currentIndex) return; // avoid reload
        if (index == 0) {
          Navigator.pushNamed(context, '/');
        } else if (index == 1) {
          Navigator.pushNamed(context, '/contact');
        } else if (index == 2) {
          Navigator.pushNamed(context, '/profile');
        }
      },
    );
  }
}
