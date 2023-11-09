import 'package:flutter/material.dart';
import 'package:my_first_app/theme/fontsize.dart';

class deliverypage extends StatefulWidget {
  const deliverypage({super.key});

  @override
  State<deliverypage> createState() => _deliverypageState();
}

class _deliverypageState extends State<deliverypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text('Checkout',
                style: TextStyle(color: Colors.black, fontSize: titlefontsize)),
            Text('1 of 2',
                style:
                    TextStyle(color: Colors.black, fontSize: subtitlefontsize)),
          ],
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back, color: Colors.black, size: 30),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(children: [
            Container(
              child: Text('DELIVERY ADDRESS',
                  style:
                      TextStyle(color: Colors.black, fontSize: titlefontsize)),
            )
          ]),
        ),
      ),
    );
  }
}
