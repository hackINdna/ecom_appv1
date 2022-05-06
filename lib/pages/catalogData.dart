import 'package:flutter/material.dart';

class Item{
  final int id;
  final String name;
  final String desc;
  final int price;
  final String color;
  final String imageUrl;

  const Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.imageUrl});
  
}

const Dummy_Data = const [
  Item(
    id: 1,
    name: "iPhone 12 Pro",
    desc: "Apple iPhone 12th generation",
    price: 999,
    color: "#33505a",
    imageUrl: "https://pngimg.com/uploads/iphone_12/iphone_12_PNG19.png"
  ),
];