import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNav extends StatelessWidget {
  final int currentIndex;

  const BottomNav({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.squarePlus),
          label: 'Add',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.movie_creation),
          label: 'Reels',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
      onTap: (int index) {
        if (index == currentIndex) return; // avoid reload
        if (index == 0) {
          Navigator.pushNamed(context, '/home');
        } else if (index == 1) {
          Navigator.pushNamed(context, '/search');
        } else if (index == 2) {
          Navigator.pushNamed(context, '/add_post');
        } else if (index == 3) {
          Navigator.pushNamed(context, '/reels');
        } else if (index == 4) {
          Navigator.pushNamed(context, '/profile');
        }
      },
    );
  }
}
