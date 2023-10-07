import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:groceryapp_1/body/Explore.dart';
import 'package:groceryapp_1/body/Favorit.dart';
import 'package:groceryapp_1/body/Shop.dart';
import 'package:groceryapp_1/bottombar/Account.dart';
import 'package:groceryapp_1/bottombar/Cart.dart';
class Bodyp extends StatefulWidget {
  const Bodyp({super.key});

  @override
  State<Bodyp> createState() => _BodypState();
}

class _BodypState extends State<Bodyp> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(

        body:
        Stack(
          children: <Widget>[
            new Offstage(
              offstage: index != 0,
              child: new TickerMode(
                enabled: index == 0,
                child: new MaterialApp(
                  debugShowCheckedModeBanner: false,
                    home: new Shop()),
              ),
            ),
            new Offstage(
              offstage: index != 4,
              child: new TickerMode(
                enabled: index == 4,
                child: new MaterialApp(
                  debugShowCheckedModeBanner: false,
                    home: new Account()),
              ),
            ),
            new Offstage(
              offstage: index != 2,
              child: new TickerMode(
                enabled: index == 2,
                child: new MaterialApp(
                    debugShowCheckedModeBanner: false,
                    home: new Cart()),
              ),
            ),
            new Offstage(
              offstage: index != 3,
              child: new TickerMode(
                enabled: index == 3,
                child: new MaterialApp(
                    debugShowCheckedModeBanner: false,
                    home: new Favorit()),
              ),
            ),
            new Offstage(
              offstage: index != 1,
              child: new TickerMode(
                enabled: index == 1,
                child: new MaterialApp(
                    debugShowCheckedModeBanner: false,
                    home: new Explore()),
              ),
            ),
          ],
        ),
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: Color(0xFF097E77),
          items: [
            TabItem(icon: Icons.shop, title: 'Shop'),
            TabItem(icon: Icons.explore, title: 'Explore'),
            TabItem(icon: Icons.shopping_cart, title: 'Cart'),
            TabItem(icon: Icons.favorite_outline, title: 'Favorite'),
            TabItem(icon: Icons.account_circle, title: 'Account'),
          ],
          onTap: (int index) {
          setState(() {
            this.index=index;
          });
            }
        )

    );
  }
}
