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

class BottomNavBarWidget extends StatelessWidget {
  BottomNavBarWidget(this.selectedIndex, this.callback);

  final Function callback;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: bottomNavItems.map((BottomNav bottomNavMenuItem) {
        return BottomNavigationBarItem(
            icon: Icon(bottomNavMenuItem.icon),
            label: bottomNavMenuItem.title,
            backgroundColor: Theme.of(context).primaryColor);
      }).toList(),
      currentIndex: selectedIndex,
      selectedItemColor: Theme.of(context).accentColor,
      onTap: (int idx) {
        callback(idx);
      },
    );
  }
}
