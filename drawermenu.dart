import 'package:flutter/material.dart';
import 'package:my_first_app/address2.dart';
import 'package:my_first_app/dashboard.dart';
import 'package:my_first_app/deliverypage.dart';
import 'package:my_first_app/profile.dart';

class drawermenu extends StatefulWidget {
  const drawermenu({super.key});

  @override
  State<drawermenu> createState() => _drawermenuState();
}

class _drawermenuState extends State<drawermenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.purple),
      child: Material(
        color: Colors.transparent,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/fruit/profile.1.jpg'),
                    backgroundColor: Colors.grey),
                decoration: BoxDecoration(color: Colors.transparent),
                accountName: Text('chandru'),
                accountEmail: Text('chandru@gmail.com')),
            listtilemenu(
              title: 'Profile',
              iconname: Icons.account_circle,
              onclicked: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => profilepage())),
            ),
            listtilemenu(
              title: 'Home Page',
              iconname: Icons.home,
              onclicked: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => dashboard())),
            ),
            listtilemenu(
              title: 'My Cart',
              iconname: Icons.shopping_cart,
              onclicked: () {},
            ),
            listtilemenu(
              title: 'Wallet',
              iconname: Icons.favorite_rounded,
              onclicked: () {},
            ),
            listtilemenu(
              title: 'Orders',
              iconname: Icons.shopping_basket,
              onclicked: () {},
            ),
            listtilemenu(
              title: 'Notifications',
              iconname: Icons.notifications,
              onclicked: () {},
            ),
            SizedBox(
              height: 150,
            ),
            listtilemenu(
              title: 'Signout',
              iconname: Icons.logout,
              onclicked: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class listtilemenu extends StatelessWidget {
  const listtilemenu(
      {required this.title,
      required this.iconname,
      required this.onclicked,
      super.key});
  final String title;
  final IconData iconname;
  final VoidCallback onclicked;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onclicked,
      leading: Container(
        padding: EdgeInsets.all(10),
        child: Icon(iconname, size: 30, color: Colors.white),
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
