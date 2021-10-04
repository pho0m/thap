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
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //double _width = MediaQuery.of(context).size.width;
    //double _height = MediaQuery.of(context).size.height;

    return DefaultTextStyle(
      style: const TextStyle(color: Colors.black),
      child: Body(
        haveFAB: true,
        context: context,
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
            ],
          ),
          testPlay(),
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

  final MusicData mockData = MusicData(
    title: "if you shy (let me knows)",
    artist: "1975",
    image:
        "https://images.squarespace-cdn.com/content/v1/56858337cbced60d3b293aef/1572288107885-V2AZJF8YVG5NARZRU7YE/Albumism_The1975_ABriefInquiryIntoOnlineRelationships_MainImage.png.jpg?format=1000w",
    musicPlay: "musics/testmusic.mp3",
  );

  Widget testPlay() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.15),
        ),
        color: Colors.grey[300],
        child: ListTile(
          leading: const Icon(
            FeatherIcons.headphones,
            size: 40.0,
          ),
          // leading: const FlutterLogo(size: 56.0),
          title: Text(
            mockData.title,
            style: head4,
          ),
          subtitle: Text(
            mockData.artist,
            style: sub1,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PlayerPage(
                  musicData: mockData,
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget nowPlaying() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.15),
        ),
        color: Colors.grey[300],
        child: ListTile(
          leading: const Icon(
            FeatherIcons.headphones,
            size: 40.0,
          ),
          // leading: const FlutterLogo(size: 56.0),
          title: Text(
            mockData.title,
            style: head4,
          ),
          subtitle: Text(
            mockData.artist,
            style: sub1,
          ),
          onTap: () {},
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
          MaterialPageRoute(builder: (context) => FavoritePage()),
        );
      },
    );
  }
}
