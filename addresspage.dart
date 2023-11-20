import 'package:flutter/material.dart';
import 'package:my_first_app/payment.dart';
import 'package:my_first_app/theme/colors.dart';

class addresspage1 extends StatefulWidget {
  const addresspage1({super.key});

  @override
  State<addresspage1> createState() => _addresspage1State();
}

class _addresspage1State extends State<addresspage1> {
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
          onPressed: () => Navigator.pop(context),
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
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
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

                  // color: Colors.yellow,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              labelText: "Full name",
                              labelStyle: TextStyle(fontSize: 20),
                              hintText: "Chandru Kaliyaperumal",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              fillColor: Color.fromARGB(255, 235, 231, 231),
                              filled: true),
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              labelText: "Phone",
                              labelStyle: TextStyle(fontSize: 20),
                              hintText: '6369003634',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              fillColor: Color.fromARGB(255, 235, 231, 231),
                              filled: true),
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  'Address info',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: primarycolor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  width: size.width,
                  // color: Colors.yellow,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              labelText: "Address",
                              labelStyle: TextStyle(fontSize: 20),
                              hintText: "",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              fillColor: Color.fromARGB(255, 235, 231, 231),
                              filled: true),
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              labelText: "City",
                              labelStyle: TextStyle(fontSize: 20),
                              hintText: '',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              fillColor: Color.fromARGB(255, 235, 231, 231),
                              filled: true),
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              labelText: "Landmark",
                              labelStyle: TextStyle(fontSize: 20),
                              hintText: "",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              fillColor: Color.fromARGB(255, 235, 231, 231),
                              filled: true),
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              labelText: "State",
                              labelStyle: TextStyle(fontSize: 20),
                              hintText: "",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              fillColor: Color.fromARGB(255, 235, 231, 231),
                              filled: true),
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              labelText: "Pincode",
                              labelStyle: TextStyle(fontSize: 20),
                              hintText: "",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              fillColor: Color.fromARGB(255, 235, 231, 231),
                              filled: true),
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => paymentpage())),
                  child: Container(
                    decoration: BoxDecoration(
                      color: appcolor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: size.width,
                    height: 50,
                    child: Center(
                      child: Text(
                        "Add Address",
                        // textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
