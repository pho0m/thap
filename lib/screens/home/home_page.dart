import 'package:dt_app/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'package:dt_app/screens/route.dart';
import 'package:dt_app/theme/constant.dart';

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
    //double _width = MediaQuery.of(context).size.width;
    //double _height = MediaQuery.of(context).size.height;

    return DefaultTextStyle(
      style: const TextStyle(color: Colors.black),
      child: Body(
        appBar: _appbar(context),
        body: [
          ImageContent(
            imageData: imageList,
          ),
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
        ],
      ),
    );
  }

  AppBar _appbar(BuildContext context) {
    return HomeAppBar(
      context: context,
      title: 'Music Explorer',
      style: head3,
      iconButton: [
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
          MaterialPageRoute(builder: (context) => PlaylistPage()),
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
}
