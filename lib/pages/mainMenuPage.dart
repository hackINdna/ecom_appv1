import 'package:flutter/material.dart';
import 'package:ecom_appv1/pages/drawer.dart';
import 'package:ecom_appv1/pages/catalogItem.dart';
import 'package:ecom_appv1/pages/catalogData.dart';

class MainMenu extends StatelessWidget {

  static const String routeName = '/main-menu';
  @override
  Widget build(BuildContext context) {

    final dummyList = List.generate(20, (index) => Dummy_Data[0]);

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
      drawer: MyDrawer(),
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, index){
          return CatalogItem(items: dummyList[index]);
        },
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}