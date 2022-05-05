import 'package:flutter/material.dart';
import 'package:ecom_appv1/pages/loginPage.dart';

void main() => runApp(Manage());

class Manage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}