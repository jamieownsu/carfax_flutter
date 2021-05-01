import 'package:flutter/material.dart';

class BottomNav {
  const BottomNav(this.title, this.icon);

  final String title;
  final IconData icon;
}

const List<BottomNav> bottomNavItems = <BottomNav>[
  BottomNav('Dashboard', Icons.home_outlined),
  BottomNav('History', Icons.history),
  BottomNav('Schedule', Icons.calendar_today),
  BottomNav('Shops', Icons.saved_search),
];
