import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class productpage extends StatefulWidget {
  const productpage({super.key});

  @override
  State<productpage> createState() => _productpageState();
}

class _productpageState extends State<productpage> {
  int count = 0, min = 0, max = 10;
  bool countchange = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: size.height / 2,
                  width: size.width,
                  color: Colors.yellow,
                  child: Image.asset('assets/fruit/orange.2.jpg',
                      fit: BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 50),
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white54,
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 330),
                  child: InkWell(
                    onTap: () => {},
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white54,
                      ),
                      child: Stack(
                        children: [
                          Center(
                            child: Icon(
                              Icons.shopping_cart,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                              height: 15,
                              width: 15,
                              child: Center(child: Text('3')),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.red,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Oranges - 1kg",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "\₹299.99",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    countchange ? addbutton() : cartbutton(),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Description',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Apple Cider Vinegar made from the finest Himalayan Apples with Goodness of 'Mother' Vinegar, Bagrry's apple cider vinegar is 100% Natural, Raw, Unfiltered, Unpasteurized, Helps Manage Weight, Aids in Digestion, Detox, anti-bacterial, anti-inflammatory in nature",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Product information',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Brand',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'SnapIt',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Manufacturer',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'SnapIt Farming',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Manufacturer Address',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'SnapIt,Chennai',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Manufacturer Email',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'support@snapit.com',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Container(
                    width: size.width,
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Reviews',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          '40',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: size.width,
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Questions and answers',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          '3',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget cartbutton() {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          countchange = true;
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Add to cart',
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
          SizedBox(width: 10),
          Icon(Icons.shopping_bag)
        ],
      ),
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.yellow,
        padding: EdgeInsets.symmetric(horizontal: 50),
        primary: Colors.black,
        fixedSize: Size(350, 50),
      ),
    );
  }

  Widget addbutton() {
    return Row(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              count > min ? count-- : count;
              count == 0 ? countchange = false : countchange = true;
            });
          },
          child: Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 187, 179, 99),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  topLeft: Radius.circular(15)),
            ),
            child: Icon(
              Icons.remove,
              color: Colors.black,
              size: 40,
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 50,
            width: 100,
            color: Colors.yellow,
            child: Center(
                child: Text(
              '$count',
              style: TextStyle(fontSize: 30),
            )),
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              count < max ? count++ : count;
            });
          },
          child: Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 187, 179, 99),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  topRight: Radius.circular(15)),
            ),
            child: Icon(
              Icons.add,
              color: Colors.black,
              size: 40,
            ),
          ),
        ),
      ],
    );
  }
}
