import 'package:carfax/data/account.dart';
import 'package:carfax/pages/home/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carfax Demo',
      theme: ThemeData(primarySwatch: Colors.blue, brightness: Brightness.dark),
      home: ChangeNotifierProvider(
        create: (_) => UserAccount(),
        child: HomePage(),
      ),
    );
  }
}
