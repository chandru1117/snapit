import 'package:flutter/material.dart';
import 'package:my_first_app/theme/colors.dart';

class addresspage extends StatefulWidget {
  const addresspage({super.key});

  @override
  State<addresspage> createState() => _addresspageState();
}

class _addresspageState extends State<addresspage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Address',
          style: TextStyle(color: primarycolor),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            size: 30,
            color: primarycolor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Contact info',
                style: TextStyle(
                    color: primarycolor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                width: size.width,
                height: 250,
                color: Colors.yellow,
                child: Column(
                  children: [
                    Container(
                      child: TextField(),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
