import 'package:dt_app/theme/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:carousel_slider/carousel_slider.dart';

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

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return DefaultTextStyle(
      style: const TextStyle(color: Colors.black),
      child: Scaffold(
        appBar: appBar(_width),
        body: home([
          imageContent(_width),
          playlist(),
          sizeBoxs20,
          favorite(),
        ]),
      ),
    );
  }

  Widget home(List<Widget> inhome) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: inhome,
        ),
      ),
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
          MaterialPageRoute(builder: (context) => const FavoritePage()),
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
          icon: const Icon(FeatherIcons.search),
          onPressed: () {
            // ignore: avoid_print
            print("search icon");
          },
        ),
      ],
    );
  }
}
