import 'package:carousel_slider/carousel_slider.dart';
import 'package:dt_app/theme/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'package:dt_app/screens/route.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imageList = [
    'assets/images/placeholder-black.jpg',
    'assets/images/placeholder-black.jpg',
    'assets/images/placeholder-black.jpg',
    'assets/images/placeholder-black.jpg',
    'assets/images/placeholder-black.jpg',
  ];

  final List<Widget> mockPlList = [
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text("He'd have you all unravel at the"),
      color: Colors.teal[100],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Heed not the rabble'),
      color: Colors.teal[200],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Sound of screams but the'),
      color: Colors.teal[300],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Who scream'),
      color: Colors.teal[400],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Revolution is coming...'),
      color: Colors.teal[500],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Revolution, they...'),
      color: Colors.teal[600],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    //double _height = MediaQuery.of(context).size.height;

    return DefaultTextStyle(
      style: const TextStyle(color: Colors.black),
      child: Scaffold(
        appBar: appBar(_width),
        body: _body(
          [
            imageContent(_width),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                playlist(),
                sizeBoxs20,
                favorite(),
                sizeBoxs20,
                play(),
              ],
            ),
            sizeBoxs20,
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.grey,
              height: 300,
              width: _width - 30,
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                children: mockPlList,
              ),
            ),
            sizeBoxs20,
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.grey,
              height: 300,
              width: _width - 30,
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                children: mockPlList,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _body(List<Widget> inhome) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: inhome,
        ),
      ),
    );
  }

  Widget play() {
    return ElevatedButton(
      child: const Text("Play"),
      style: ElevatedButton.styleFrom(
        primary: Colors.grey,
        padding: const EdgeInsets.all(20),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const PlayerPage()),
        );
      },
    );
  }

  Widget playlist() {
    return ElevatedButton(
      child: const Text("Playlist"),
      style: ElevatedButton.styleFrom(
        primary: Colors.grey,
        padding: const EdgeInsets.all(20),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const PlaylistPage()),
        );
      },
    );
  }

  Widget favorite() {
    return ElevatedButton(
      child: const Text("favorite"),
      style: ElevatedButton.styleFrom(
        primary: Colors.grey,
        padding: const EdgeInsets.all(20),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FavoritePage()),
        );
      },
    );
  }

  Widget imageContent(double width) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: CarouselSlider(
        options: CarouselOptions(
          enlargeCenterPage: true,
          enableInfiniteScroll: false,
          autoPlay: true,
        ),
        items: imageList
            .map(
              (e) => ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Image.asset(
                      e,
                      width: 1050,
                      height: 350,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  AppBar appBar(double width) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      title: const Text(
        "Music Explorer",
        style: head3,
      ),
      elevation: 0,
      actions: [
        IconButton(
          color: Colors.black,
          icon: const Icon(FeatherIcons.bell),
          onPressed: () {},
        ),
        IconButton(
          color: Colors.black,
          icon: const Icon(FeatherIcons.search),
          onPressed: () {},
        ),
      ],
    );
  }
}
