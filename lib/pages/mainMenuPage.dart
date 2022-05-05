import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {

  static const String routeName = '/main-menu';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JewelAR',
        ),
        centerTitle: true,
      ),
      body: Text(
        'Content of Main Menu',
      ),
    );
  }
}