import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_first_app/dashboard.dart';

class welcomescreen extends StatefulWidget {
  const welcomescreen({super.key});

  @override
  State<welcomescreen> createState() => _welcomescreenState();
}

class _welcomescreenState extends State<welcomescreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => dashboard())));
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
          statusBarColor: Color(0xff4c148b),
          systemNavigationBarColor: Color(0xff4c148b)),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xff4c148b),
          body: Center(
            child: Container(
              child: Image.asset("assets/fruit/snapit.png"),
            ),
          ),
        ),
      ),
    );
  }
}
