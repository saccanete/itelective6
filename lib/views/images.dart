import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  const Images({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imagelist = [
      'assets/shape.gif',
      'assets/shape2.gif',
      'assets/background.png',
      'assets/shapee.jpg',
      'assets/bg2.jpg',
      'assets/copy.png',
      'assets/leejiah.jpg',
      'assets/Bunga Sama.jpg',
      'assets/cape black sinaulan.jpg',
      'assets/handmade bamboo.png',
      'assets/Ikat.jpg',
      'assets/Inaul.jpg',
      'assets/Inabal.jpg',
      'assets/kabban budi.png',
      'assets/Malong.jpeg',
      'assets/Woven Bag.jfif',
      "assets/t'nalak.jpg",
      'assets/Tausug.jpg',
      'assets/arts.jpg',
      'assets/arts2.jpg',
      'assets/davao.jpg',
      'assets/theface.png',
      'assets/contemporary.png',
      'assets/geometric.jpg',
      'assets/pattern.jpg',
      'assets/abstract.jpg',
      'assets/colorfulcat.jpg',
      'assets/Horse.jpg',
      'assets/lonewolf.jpg',
      'assets/fearless.jpg',
      'assets/cool.jpg',
      'assets/fearlesslion.jpg',
      'assets/bg.jpg',
      'assets/abstract.jpg',
      'assets/BlackIris.jpg',
      'assets/WaterLilies.jpg',
      'assets/Composition7.jpg',
      'assets/angles.jfif',
      'assets/angle.jpg',
      'assets/Dance.jpg',
      'assets/Number5.jpg',
      'assets/picasso.jpg',
      'assets/houses.jpg',
      'assets/Everyday.jpg',
      'assets/abstract2.jpg',
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text('ARTS & CRAFT GALLERY'),
        ),
        body: Card(
          child: Center(
              child: Container(
            child: GridView.builder(
              itemCount: imagelist.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Image.asset(imagelist[index]);
              },
            ),
          )),
        )
        /*body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(0),
            sliver: SliverGrid.count(
              crossAxisSpacing: 20,
              mainAxisSpacing: 10,
              crossAxisCount: 4,
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.all(8),
                    child: GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/Bunga Sama.jpg'),
                            const Text('Bunga Sama Made by the Yakan tribe',
                                style: TextStyle(fontSize: 18))
                          ],
                        ))),
                Container(
                    padding: const EdgeInsets.all(8),
                    child: GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/Inabal.jpg'),
                            const Text('Inabal', style: TextStyle(fontSize: 18))
                          ],
                        ))),
                Container(
                    padding: const EdgeInsets.all(8),
                    child: GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/Habul tiyahian.jpg'),
                            const Text('Habul Tiyahian (Made by Tausug people)',
                                style: TextStyle(fontSize: 18))
                          ],
                        ))),
                Container(
                    padding: const EdgeInsets.all(8),
                    child: GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/handmade bamboo.png'),
                            const Text('handmade bamboo',
                                style: TextStyle(fontSize: 18))
                          ],
                        ))),
                Container(
                    padding: const EdgeInsets.all(8),
                    child: GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/Ikat.jpg'),
                            const Text(
                                'Ikat (Made by Mandaya people of Davao Oriental, Bagobo and B’laan)',
                                style: TextStyle(fontSize: 18))
                          ],
                        ))),
                Container(
                    padding: const EdgeInsets.all(8),
                    child: GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/Inaul.jpg'),
                            const Text('Inaul (Made by Maguindanaon)',
                                style: TextStyle(fontSize: 18))
                          ],
                        ))),
                Container(
                    padding: const EdgeInsets.all(8),
                    child: GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/kabban budi.png'),
                            const Text('Kabban Budi (Made by the Yakan tribe)',
                                style: TextStyle(fontSize: 18))
                          ],
                        ))),
                Container(
                    padding: const EdgeInsets.all(8),
                    child: GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/Malong.jpeg'),
                            const Text('Malong (Made by Maranao people)',
                                style: TextStyle(fontSize: 18))
                          ],
                        ))),
                Container(
                    padding: const EdgeInsets.all(8),
                    child: GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: <Widget>[
                            Image.asset("assets/t'nalak.jpg"),
                            const Text('T’Nalak (Made by the T’Boli tribe)',
                                style: TextStyle(fontSize: 18))
                          ],
                        ))),
                Container(
                    padding: const EdgeInsets.all(8),
                    child: GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: <Widget>[
                            Image.asset("assets/pussuk labung.png"),
                            const Text(
                                'Pussuk Labbung (Made by the Yakan tribe)',
                                style: TextStyle(fontSize: 18))
                          ],
                        ))),
                Container(
                    padding: const EdgeInsets.all(8),
                    child: GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: <Widget>[
                            Image.asset("assets/Woven Bag.jfif"),
                            const Text('Woven Bag made by Mindanaoan',
                                style: TextStyle(fontSize: 18))
                          ],
                        ))),
                Container(
                    padding: const EdgeInsets.all(8),
                    child: GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: <Widget>[
                            Image.asset("assets/cape black sinaulan.jpg"),
                            const Text(
                                'Cape black Sinaluan (Made by the Yakan tribe)',
                                style: TextStyle(fontSize: 18))
                          ],
                        ))),
              ],
            ),
          ),
        ],
      ),*/
        );
  }
}
/*fonts: sa pubspec
  - family: Schyler
    fonts:
        - asset: fonts/Schyler-Regular.ttf
        - asset: fonts/Schyler-Italic.ttf
        style: italic
  - family: NotoSerif
    fonts:
        - asset: assets/google_fonts/NotoSerif-Regular.ttf
        - asset: assets/google_fonts/NotoSerif-Italic.ttf
        - asset: assets/google_fonts/NotoSerif-Bold.ttf

  - family: Merriweather
    fonts:
        - asset: assets/google_fonts/Merriweather-Light.ttf
        - asset: assets/google_fonts/Merriweather-LightItalic.ttf
        - asset: assets/google_fonts/Merriweather-Regular.ttf
        - asset: asset:ssets/google_fonts/Merriweather-Italic.ttf
        - asset: assets/google_fonts/Merriweather-Bold.ttf
        - asset: assets/google_fonts/Merriweather-Black.ttf
  - family: GreyQo
    fonts:
        - asset: assets/google_fonts/GreyQo-Regular.ttf
  - family: Gluten
    fonts:
      - asset: assets/google_fonts/Gluten-Light.ttf
      - asset: assets/google_fonts/Gluten-Medium.ttf
      - asset: assets/google_fonts/Gluten-Regular.ttf
      - asset: assets/google_fonts/Gluten-SemiBold.ttf
      - asset: assets/google_fonts/Gluten-Thin.ttf
- family: Caramel
    fonts:
        - asset: assets/google_fonts/Caramel-Regular.ttf*/