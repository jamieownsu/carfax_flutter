import 'package:carfax/data/account.dart';
import 'package:carfax/pages/dashboard/dashboard_page.dart';
import 'package:carfax/pages/history/history_page.dart';
import 'package:carfax/pages/shared/bottom_nav_bar.dart';
import 'package:carfax/utilities/network_utility.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VehicleDetailPage extends StatefulWidget {
  VehicleDetailPage({Key key, @required this.vin}) : super(key: key);

  final String vin;

  @override
  _VehicleDetailPageState createState() => _VehicleDetailPageState();
}

class _VehicleDetailPageState extends State<VehicleDetailPage> {
  final PageController _pageController =
      PageController(initialPage: 0, keepPage: true);
  bool _loading = true;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    NetworkUtility.getVehicleDetails(widget.vin).then((value) {
      if (value != null) {
        setState(() => _loading = false);
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            '${context.watch<UserVehicle>().year} ${context.watch<UserVehicle>().make} ${context.watch<UserVehicle>().model}'),
        centerTitle: true,
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : PageView(
              controller: _pageController,
              onPageChanged: (int idx) {
                setState(() => _selectedIndex = idx);
              },
              children: <Widget>[DashboardPage(), HistoryPage()],
            ),
      bottomNavigationBar: BottomNavigationBar(
          items: bottomNavItems.map((BottomNav bottomNavMenuItem) {
            return BottomNavigationBarItem(
                icon: Icon(bottomNavMenuItem.icon),
                label: bottomNavMenuItem.title,
                backgroundColor: Theme.of(context).primaryColor);
          }).toList(),
          currentIndex: _selectedIndex,
          onTap: (int idx) {
            _pageController.animateToPage(
              idx,
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
            );
            setState(() => _selectedIndex = idx);
          }),
    );
  }
}
