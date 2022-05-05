import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {

  static const String routeName = '/main-menu';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              'JewelAR'
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 5.0, 0,0),
              //color: Colors.white,
              width: 250,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                ),
              ),
            ),
          ],
        ),
        toolbarHeight: 90,
        //centerTitle: true,
      ),
      drawer: Drawer(),
      body: Text(
        'Content of Main Menu',
      ),
    );
  }
}