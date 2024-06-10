import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: true,
      unselectedItemColor: Colors.black,
      showUnselectedLabels: true,
      selectedItemColor: Colors.blue,
      currentIndex: 0,
      elevation: 2,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Image.asset("assets/icons/ic_book.png"),
          label: 'My Courses',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/icons/ic_chats_teardrop.png",
          ),
          label: 'Mentors',
        ),
        BottomNavigationBarItem(
          icon: Image.asset("assets/icons/ic_profile.png"),
          label: 'Profile',
        ),
      ],
    );
  }
}
