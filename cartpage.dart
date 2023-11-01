import 'package:flutter/material.dart';

class PurchasePage extends StatefulWidget {
  const PurchasePage({super.key});

  @override
  State<PurchasePage> createState() => _PurchasePageState();
}

class _PurchasePageState extends State<PurchasePage> {
  int min = 1, count = 1, max = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: InkWell(
              onTap: () => {},
              child: Ink(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(5, 5),
                          blurRadius: 5.0),
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Icon(
                  Icons.notifications_none_outlined,
                  color: Color(0xff606060),
                  size: 30,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            onTap: () => {},
            child: Ink(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.grey, offset: Offset(5, 5), blurRadius: 5.0),
              ], borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Icon(
                Icons.dashboard_sharp,
                size: 30,
                color: Color(0xff606060),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 100,
                        width: 350,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(width: 0.2)),
                              padding: EdgeInsets.all(15),
                              height: 90,
                              width: 100,
                              child: Image.asset(
                                'assets/fruit/orange.2.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'orange - 1kg',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  '\₹299.99',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Positioned(
                                  child: InkWell(
                                    onTap: () => {},
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      child:
                                          Icon(Icons.highlight_off, size: 30),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.amber),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () => setState(() =>
                                              count > min ? count-- : count),
                                          child: Container(
                                            child: Icon(Icons.remove),
                                          ),
                                        ),
                                        Text(
                                          '$count',
                                          style: TextStyle(fontSize: 30),
                                        ),
                                        InkWell(
                                          onTap: () => setState(() =>
                                              count < max ? count++ : count),
                                          child: Container(
                                            child: Icon(Icons.add),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
