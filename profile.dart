import 'package:flutter/material.dart';
import 'package:my_first_app/address2.dart';
import 'package:my_first_app/drawermenu.dart';

class profilepage extends StatefulWidget {
  const profilepage({super.key});

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: Text('Profile'),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "save",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          )
        ],
      ),
      body: Container(
          child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/fruit/profile.1.jpg'),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text("phone")
              ],
            ),
          ),
          ListTile(
            leading: Container(
              child: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
                size: 25,
              ),
            ),
            title: Text(
              "My orders",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Text("14"),
          ),
          ListTile(
            leading: Container(
              child: Icon(
                Icons.perm_identity_outlined,
                color: Colors.black,
                size: 25,
              ),
            ),
            title: Text(
              "My details",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Container(
              child: Icon(
                Icons.place_outlined,
                color: Colors.black,
                size: 25,
              ),
            ),
            title: Text(
              "Address book",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Container(
              child: Icon(
                Icons.logout_outlined,
                color: Colors.black,
                size: 25,
              ),
            ),
            title: Text(
              "Signout",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      )),
    );
  }
}
