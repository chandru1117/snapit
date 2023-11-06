import 'package:flutter/material.dart';
import 'package:my_first_app/cartpage.dart';
import 'package:my_first_app/drawermenu.dart';
import 'package:my_first_app/home.dart';
import 'package:my_first_app/shoppingpage.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
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

  double translatex = 0, translatey = 0, scale = 1;
  bool toggle = false;
  callback(toggle) {
    setState(() {
      toggle = !toggle;
      if (toggle) {
        double translatex = 200, translatey = 130, scale = 0.7;
      } else {
        double translatex = 0.0, translatey = 0.0, scale = 1.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // drawermenu(),
        AnimatedContainer(
          duration: Duration(seconds: 5),
          transform: Matrix4.translationValues(translatex, translatey, 0)
            ..scale(scale),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
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
    );
  }
}
