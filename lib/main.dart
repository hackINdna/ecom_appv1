import 'package:flutter/material.dart';
import 'package:ecom_appv1/pages/loginPage.dart';
import 'package:ecom_appv1/pages/mainMenuPage.dart';
import 'package:ecom_appv1/pages/theme.dart';

void main() => runApp(Manage());

class Manage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MainMenu.routeName,
      routes: {
        '/': (context) => LoginPage(),
        MainMenu.routeName: (context) => MainMenu(),
      },
    );
  }
}