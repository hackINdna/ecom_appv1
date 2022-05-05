import 'package:flutter/material.dart';
import 'package:ecom_appv1/pages/loginPage.dart';
import 'package:ecom_appv1/pages/mainMenuPage.dart';

void main() => runApp(Manage());

class Manage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => LoginPage(),
        MainMenu.routeName: (context) => MainMenu(),
      },
    );
  }
}