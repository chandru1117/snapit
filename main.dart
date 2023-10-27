import 'package:flutter/material.dart';
import 'package:my_first_app/home.dart';
import 'package:my_first_app/purchase.dart';

import 'shoppingpage.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  int BotNavPageindex = 0;
  List Pages = [
    HomePage(),
    ShoppingPage(),
    PurchasePage(),
  ];

  void onTapBotNavChange(int index) {
    setState(() {
      BotNavPageindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: Pages[BotNavPageindex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: BotNavPageindex,
          onTap: onTapBotNavChange,
          fixedColor: Colors.purple,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '    ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket),
              label: '    ',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: '    ')
          ],
        ),
      ),
    );
  }
}
