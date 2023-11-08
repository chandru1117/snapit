import 'package:flutter/material.dart';
import 'package:my_first_app/productpage.dart';

class CardItem {
  final String assetimage;
  final String title;
  final String subtitle;

  const CardItem(
      {required this.assetimage, required this.title, required this.subtitle});
}

class HomePage extends StatefulWidget {
  final Function callbackfunction;
  bool Toggle;

  HomePage({Key? key, required this.callbackfunction, required this.Toggle})
      : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CardItem> items = [
    CardItem(
      assetimage: 'assets/fruit/apple.1.jpg',
      title: 'Apples - 1kg',
      subtitle: '\₹399.99',
    ),
    CardItem(
      assetimage: 'assets/fruit/orange.2.jpg',
      title: 'orange - 1kg',
      subtitle: '\₹299.99',
    ),
    CardItem(
      assetimage: 'assets/fruit/mango.3.jpg',
      title: 'mango - 1kg',
      subtitle: '\₹149.99',
    ),
    CardItem(
      assetimage: 'assets/fruit/pomegranate.4.jpg',
      title: 'pomegranate - 1kg',
      subtitle: '\₹349.99',
    )
  ];
  @override
  Widget build(BuildContext context) {
    Widget buildCard({
      required CardItem item,
    }) =>
        Container(
          height: 200,
          width: 180,
          color: Colors.white,
          child: InkWell(
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => productpage())),
            child: Ink(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Image.asset(
                      item.assetimage,
                      alignment: Alignment.topCenter,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    item.title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    item.subtitle,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 30),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      'Add to cart',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      primary: Colors.grey,
                    ),
                    onLongPress: () => {},
                  )
                ],
              ),
            ),
          ),
        );

    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: IconButton(
                onPressed: () {
                  widget.Toggle = !widget.Toggle;
                  widget.callbackfunction(widget.Toggle);
                  print(widget.Toggle);
                },
                icon: Icon(Icons.menu),
                color: Colors.black),
            leadingWidth: 30,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Delivery address',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      ?.copyWith(color: Colors.grey, fontSize: 12),
                ),
                InkWell(
                  onTap: () {
                    print('hi');
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Salitica City,Central Java',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            ?.copyWith(color: Colors.black, fontSize: 15),
                        //style: TextStyle(color: Colors.black, fontSize: 14)
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ],
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_none_outlined, size: 40.0),
                color: Colors.black,
              ),
              Container(
                child: CircleAvatar(
                    backgroundImage: AssetImage('assets/fruit/mango.3.jpg')),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(width: 0.5, color: Colors.grey)),
                          height: 40,
                          //padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5 ),
                          margin: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: InkWell(
                            onTap: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.search, size: 30),
                                Text(
                                  '   Search here....',
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(
                                          color: Colors.grey, fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: 280,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.red),
                          child: Image.asset('assets/fruit/card.0.jpg',
                              fit: BoxFit.fill),
                        ),
                        SizedBox(width: 20),
                        Container(
                          height: 200,
                          width: 280,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.red),
                          child: Image.asset('assets/fruit/card.1.jpeg',
                              fit: BoxFit.fill),
                        ),
                        SizedBox(width: 20),
                        Container(
                          height: 200,
                          width: 280,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.red),
                          child: Image.asset('assets/fruit/card.2.jpeg',
                              fit: BoxFit.fill),
                        ),
                        SizedBox(width: 20),
                        Container(
                          height: 200,
                          width: 280,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.red),
                          child: Image.asset('assets/fruit/card.3.jpeg',
                              fit: BoxFit.fill),
                        ),
                        SizedBox(width: 20),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text('Categories',
                          style:
                              Theme.of(context).textTheme.headline4?.copyWith(
                                    color: Colors.black,
                                    fontSize: 18,
                                  )),
                      SizedBox(width: 220.0),
                      InkWell(
                        child: Text('See All'),
                        onTap: () {},
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        OutlinedButton(
                            onPressed: () {},
                            child: Text('Groceries',
                                style: TextStyle(color: Colors.grey)),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(20.0)))),
                        SizedBox(width: 10),
                        OutlinedButton(
                            onPressed: () {},
                            child: Text('Water',
                                style: TextStyle(color: Colors.grey)),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(20.0)))),
                        SizedBox(width: 10),
                        OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              'Category3',
                              style: TextStyle(color: Colors.grey),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(20.0)))),
                        SizedBox(width: 10),
                        OutlinedButton(
                            onPressed: () {},
                            child: Text('Juice',
                                style: TextStyle(color: Colors.grey)),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(20.0)))),
                        SizedBox(width: 10),
                        OutlinedButton(
                            onPressed: () {},
                            child: Text('Category4',
                                style: TextStyle(color: Colors.grey)),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0))))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('Recent Products',
                          style: TextStyle(color: Colors.black)),
                      SizedBox(
                        width: 150,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white54,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                          child: Row(
                            children: [
                              Text('Filters',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: 20.0,
                              ),
                              Icon(
                                Icons.filter_alt_sharp,
                                color: Colors.grey,
                              )
                            ],
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 250,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: items.length,
                      separatorBuilder: (context, _) => SizedBox(width: 20),
                      itemBuilder: (context, index) =>
                          buildCard(item: items[index]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
