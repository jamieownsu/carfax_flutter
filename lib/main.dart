import 'package:carfax/data/account.dart';
import 'package:carfax/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carfax Demo',
      theme: ThemeData(primarySwatch: Colors.blue, brightness: Brightness.dark),
      home: ChangeNotifierProvider(
        create: (_) => UserAccount(),
        child: const HomePage(),
      ),
    );
  }
}
