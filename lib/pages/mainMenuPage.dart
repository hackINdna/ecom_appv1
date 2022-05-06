import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ecom_appv1/pages/drawer.dart';
import 'package:ecom_appv1/pages/catalogItem.dart';
import 'package:ecom_appv1/pages/catalogData.dart';
import 'package:flutter/services.dart';

class MainMenu extends StatefulWidget {

  static const String routeName = '/main-menu';
  

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {

  static List<Item>? lists;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }
  
  loadData() async {
    //await Future.delayed(Duration(seconds: 2));
    final catalogJson = await rootBundle.loadString('assets/files/catalog.json');
    final decodedData = jsonDecode(catalogJson);
    final productData = decodedData['products'];
    lists = List.from(productData).map<Item>((items){
      return Item.fromMap(items);
    }).toList();
    setState((){});
  }


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
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: (lists != null && lists!.isNotEmpty) ?ListView.builder(
          itemCount: lists!.length,
          itemBuilder: (context, index){
            return CatalogItem(items: lists![index]);
          },
        ) : Center(
          child: CircularProgressIndicator(),
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}