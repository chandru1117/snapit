import 'package:flutter/material.dart';
import 'package:my_first_app/drawermenu.dart';
import 'package:my_first_app/home.dart';
import 'package:my_first_app/cartpage.dart';

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

  double translatex = 0.0, translatey = 0.0, scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Stack(
        children: [
          drawermenu(),
          AnimatedContainer(
            duration: Duration(seconds: 5),
            transform: Matrix4.translationValues(200, 130, 0)..scale(0.7),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Scaffold(
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
            ),
          ),
        ],
      ),
    );
  }
}
