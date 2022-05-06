import 'package:flutter/material.dart';
import 'package:ecom_appv1/pages/catalogData.dart';

class CatalogItem extends StatelessWidget {
  final Item items;

  const CatalogItem({Key? key, required this.items}) : assert(items != null), super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: (){},
        leading: Image.network(items.imageUrl),
        title: Text(
          '${items.name}',
        ),
        subtitle: Text(
          '${items.desc}',
        ),
        trailing: Text(
          '\$${items.price}',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.orange
          ),
        ),
      ),
    );
  }
}