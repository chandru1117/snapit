import 'package:flutter/material.dart';
import 'package:my_first_app/theme/colors.dart';

class addresspage2 extends StatefulWidget {
  const addresspage2({super.key});

  @override
  State<addresspage2> createState() => _addresspage2State();
}

class _addresspage2State extends State<addresspage2> {
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
                addressform(
                  size: size,
                  Text1: 'Full name',
                  keyboardType: TextInputType.name,
                ),
                addressform(
                  size: size,
                  Text1: 'Phone',
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Address info',
                  style: TextStyle(
                      color: primarycolor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 0,
                ),
                addressform(
                  size: size,
                  Text1: 'Address',
                  keyboardType: TextInputType.name,
                ),
                addressform(
                  size: size,
                  Text1: 'Landmark',
                  keyboardType: TextInputType.name,
                ),
                addressform(
                  size: size,
                  Text1: 'City',
                  keyboardType: TextInputType.name,
                ),
                addressform(
                  size: size,
                  Text1: 'State',
                  keyboardType: TextInputType.name,
                ),
                addressform(
                  size: size,
                  Text1: 'Pincode',
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 60,
                ),
                InkWell(
                  onTap: () {
                    final text = "Address saved";
                    final snackbar = SnackBar(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Colors.black,
                      behavior: SnackBarBehavior.floating,
                      content: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20, left: 10),
                          child: Text(text),
                        ),
                      ),
                      duration: Duration(seconds: 3),
                      action: SnackBarAction(
                        label: 'Close',
                        textColor: Colors.amber[400],
                        onPressed: () {},
                      ),
                    );
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(snackbar);
                  },
                  splashColor: Colors.red,
                  child: Ink(
                    width: size.width,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.amber[400],
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text("Save address",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    final text = "Address deleted";
                    final snackbar = SnackBar(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Colors.black,
                      content: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20, left: 10),
                          child: Text(text),
                        ),
                      ),
                      behavior: SnackBarBehavior.floating,
                      duration: Duration(seconds: 3),
                      action: SnackBarAction(
                        label: 'Close',
                        textColor: Colors.amber[400],
                        // backgroundColor: Colors.white,
                        onPressed: () {},
                      ),
                    );
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(snackbar);
                  },
                  splashColor: Colors.red,
                  child: Ink(
                    width: size.width,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text("Delete address",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
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

class addressform extends StatelessWidget {
  const addressform({
    super.key,
    required this.size,
    required this.Text1,
    required this.keyboardType,
  });

  final Size size;
  final String Text1;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 235, 231, 231),
      ),
      margin: EdgeInsets.only(top: 20),
      width: size.width,
      height: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 20),
            child: Text(Text1, style: TextStyle(fontSize: 12)),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 0, left: 15),
            child: TextFormField(
              keyboardType: keyboardType,
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
