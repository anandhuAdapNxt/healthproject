import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

// This Is The Custom Widget for Bottom Navigation Bar

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedFontSize: 14,
      unselectedFontSize: 14,
      currentIndex: _currentSelectedIndex,
      onTap: (newIndex) {
        setState(() {
          _currentSelectedIndex = newIndex;
        });
      },
      selectedIconTheme: const IconThemeData(color: Color(0xff5CE0E6)),
      unselectedIconTheme: const IconThemeData(color: Color(0xff000000)),
      selectedLabelStyle: const TextStyle(
        fontFamily: "Nunito",
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal,
        color: Colors.black,
      ),
      unselectedLabelStyle: const TextStyle(
        fontFamily: "NunitoRegular",
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        color: Color(
          (0xff04004F),
        ),
      ),
      selectedItemColor: const Color(0xff333333),
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_filled,
          ),
          label: "home",
        ),
        BottomNavigationBarItem(
            icon: Icon(UniconsLine.calendar_alt), label: "history"),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.add_box_outlined,
          ),
          label: "add",
        ),
        BottomNavigationBarItem(
          icon: Icon(UniconsLine.apps),
          label: "more",
        ),
      ],
    );
  }
}
