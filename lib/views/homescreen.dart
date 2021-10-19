import 'package:flutter/material.dart';
import 'package:itelective6/models/items.dart';

//import 'package:flutter_custom_cards/flutter_custom_cards.dart';

import '../main.dart';
import 'images.dart';
import 'message.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  //const HomeScreen({Key? key}) : super(key: key);

  List<Item> item = [
    new Item(
        id: '1',
        prodname: 'Dance (La Danse)',
        description:
            "Dance (La Danse) is a painting made by Henri Matisse in 1910",
        price: 11.2,
        imgloc: 'assets/Dance.jpg'),
    new Item(
        id: '2',
        prodname: "Black Iris III",
        description:
            "Black Iris III, is a 1926 oil painting by Georgia O'Keeffe.",
        price: 44.4,
        imgloc: 'assets/BlackIris.jpg'),
    new Item(
        id: '3',
        prodname: "Untitled",
        description:
            "Carl Andre 1963. Contemporary art, Typed carbon paper transfer on paper. ",
        price: 110.5,
        imgloc: 'assets/contemporary.png'),
    new Item(
        id: '4',
        prodname: 'The Persuasion of Right Angles(2010)',
        description: "Artwork by Robert Williams",
        price: 12.3,
        imgloc: 'assets/angle.jpg'),
    new Item(
        id: '5',
        prodname: 'floating Painting',
        description:
            "Saatchi Art is pleased to offer the painting, 'floating,' by Jenine Supan",
        price: 1.3,
        imgloc: 'assets/floater - copy.jpg'),
    new Item(
        id: '6',
        prodname: 'Water Lilies Nympheas',
        description:
            "Claude Monet's lush, light-dappled plein air paintings exemplify the aesthetics of the Impressionist movement, which the artist helped establish in late 1800s France.",
        price: 1.1,
        imgloc: 'assets/WaterLilies.jpg'),
    new Item(
        id: '7',
        prodname: 'Composition VII ',
        description:
            "Composition VII is an abstract oil painting executed in 1913 by Wassily Kandinsky, a Russian-born painter.",
        price: 3.2,
        imgloc: 'assets/Composition7.jpg'),
    new Item(
        id: '8',
        prodname: 'The Women of Algiers',
        description: "The Women of Algiers, 1955 by Pablo Picasso",
        price: 450,
        imgloc: 'assets/picasso.jpg'),
    new Item(
        id: '9',
        prodname: 'The Dream Horse',
        description: "Lim Carter",
        price: 6.3,
        imgloc: 'assets/Horse.jpg'),
    new Item(
        id: '10',
        prodname: 'Rhythm, Joy of Life',
        description: "artist ROBERT DELAUNAY year 1930",
        price: 2.2,
        imgloc: 'assets/abstract.jpg'),
    new Item(
        id: '10',
        prodname: 'Everyday',
        description:
            "Beeple's monumental new artwork combines 5000 images created over 13 years into the first purely-digital NFT artwork",
        price: 69.3,
        imgloc: 'assets/Everyday.jpg'),
    new Item(
        id: '10',
        prodname: 'The She-Wolf',
        description: "artwork by Jackson Pollock",
        price: 2.1,
        imgloc: 'assets/Fearless.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    List<Material> cards = [];
    for (int i = 0; i < item.length; i++) {
      cards.add(customCard(item[i]));
    }
    //Size dsize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('ARTS & CRAFTS'),
      ),

      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              direction: Axis.horizontal,
              children: cards,
            ),
          ),
        ],
      ),

      endDrawer: Drawer(
        elevation: 10.0,
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.cyan[300]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('leejiah.jpg'),
                    radius: 40.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Shanly Canete',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 25.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'saccanete@addu.edu.ph',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 14.0),
                      ),
                    ],
                  )
                ],
              ),
            ),

            //Here you place your menu items
            ListTile(
                leading: Icon(Icons.home),
                title: Text('LogOut', style: TextStyle(fontSize: 18)),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          LoginScreen())); // Here you can give your route to navigate
                }),
            Divider(height: 2.0),
            ListTile(
              leading: Icon(Icons.message_outlined),
              title: Text('Message', style: TextStyle(fontSize: 18)),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MessageScreen()));
                // Here you can give your route to navigate
              },
            ),
            ListTile(
              leading: Icon(Icons.circle_notifications),
              title: Text('Notification', style: TextStyle(fontSize: 18)),
              onTap: () {
                // Here you can give your route to navigate
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings', style: TextStyle(fontSize: 18)),
              onTap: () {
                // Here you can give your route to navigate
              },
            ),
            ListTile(
              leading: Icon(Icons.image),
              title: Text('View Image', style: TextStyle(fontSize: 18)),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Images()));
                // Here you can give your route to navigate
              },
            ),

            ListTile(
              leading: Icon(Icons.close),
              title: Text('Close Drawer', style: TextStyle(fontSize: 18)),
              onTap: () {
                // Here you can give your route to navigate
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ), //end drawer
    );
  }
}

Material customCard(Item item) {
  return Material(
    elevation: 20,
    borderRadius: BorderRadius.circular(5.0),
    child: Container(
        width: 400,
        height: 400,
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(item.imgloc),
            SizedBox(
              height: 5,
            ),
            Text(
              item.prodname,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              item.description,
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("\u0024 " + item.price.toString() + "M",
                    style: TextStyle(fontSize: 14)),
                SizedBox(
                  width: 15,
                )
              ],
            )
          ],
        )),
  );
}
