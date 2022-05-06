import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.orange,
        ),
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text(
                  'Raja Dey',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                accountEmail: Text(
                  'rajadeyraj@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/image/1.jpg'),
                ),
                margin: EdgeInsets.zero,
              ), 
            ),
            basicListTime('Home', CupertinoIcons.home),
            Divider(),
            basicListTime('Profile', CupertinoIcons.profile_circled),
            Divider(),
            basicListTime('All Categories', CupertinoIcons.square_grid_2x2),
            Divider(),
            basicListTime('Orders', CupertinoIcons.square_list),
            Divider(),
            basicListTime('Cart', CupertinoIcons.cart),
            Divider(),
            basicListTime('Wishlist', CupertinoIcons.heart),
            basicListTime('Sell on JewelAR', CupertinoIcons.briefcase),
            Divider(),
            basicListTime('Offer Zone', CupertinoIcons.ticket),
            Divider(),
            basicListTime('Refer & Earn', CupertinoIcons.money_dollar_circle),
            Divider(),
            basicListTime('New Features', CupertinoIcons.news),
            Divider(),
            basicListTime('Settings', CupertinoIcons.gear)
          ],
        ),
      ),
    );
  }

  ListTile basicListTime(text, icons) {
    return ListTile(
            leading: Icon(
              icons,
              color: Colors.white,
            ),
            title: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          );
  }
}