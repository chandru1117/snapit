import 'package:flutter/material.dart';

class CardItem {
  final String assetimage;
  final String title;
  final String subtitle;

  const CardItem(
      {required this.assetimage, required this.title, required this.subtitle});
}

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({super.key});

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
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
                  ))
            ],
          ),
        );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1.0, color: Colors.grey)),
                height: 40,
                width: 270,
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.search,
                          size: 30, color: const Color.fromARGB(255, 10, 3, 3)),
                      Text(
                        '   Search here....',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            ?.copyWith(color: Colors.grey, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.notifications_none_outlined,
              size: 40,
              color: Colors.black,
            ),
          ),
          Container(
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/fruit/mango.3.jpg')),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                                borderRadius: BorderRadius.circular(10.0)))),
                    SizedBox(width: 10),
                    OutlinedButton(
                        onPressed: () {},
                        child:
                            Text('Water', style: TextStyle(color: Colors.grey)),
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)))),
                    SizedBox(width: 10),
                    OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          'Category3',
                          style: TextStyle(color: Colors.grey),
                        ),
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)))),
                    SizedBox(width: 10),
                    OutlinedButton(
                        onPressed: () {},
                        child:
                            Text('Juice', style: TextStyle(color: Colors.grey)),
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)))),
                    SizedBox(width: 10),
                    OutlinedButton(
                        onPressed: () {},
                        child: Text('Category4',
                            style: TextStyle(color: Colors.grey)),
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0))))
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    OutlinedButton(
                        onPressed: () {},
                        child: Text('Fruits',
                            style: TextStyle(color: Colors.grey)),
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)))),
                    SizedBox(width: 10),
                    OutlinedButton(
                        onPressed: () {},
                        child:
                            Text('Water', style: TextStyle(color: Colors.grey)),
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)))),
                    SizedBox(width: 10),
                    OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          'Category3',
                          style: TextStyle(color: Colors.grey),
                        ),
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)))),
                    SizedBox(width: 10),
                    OutlinedButton(
                        onPressed: () {},
                        child:
                            Text('Juice', style: TextStyle(color: Colors.grey)),
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)))),
                    SizedBox(width: 10),
                    OutlinedButton(
                        onPressed: () {},
                        child: Text('Category4',
                            style: TextStyle(color: Colors.grey)),
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0))))
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 250,
                width: 450,
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
    );
  }
}
