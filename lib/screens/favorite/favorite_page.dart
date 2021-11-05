import 'package:dt_app/components/components.dart';
import 'package:dt_app/theme/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../route.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    List<MusicData> mockMusicData = [
      MusicData(
        title: "if you shy (let me knows)",
        artist: "1975",
        image:
            "https://images.squarespace-cdn.com/content/v1/56858337cbced60d3b293aef/1572288107885-V2AZJF8YVG5NARZRU7YE/Albumism_The1975_ABriefInquiryIntoOnlineRelationships_MainImage.png.jpg?format=1000w",
        musicPlay: "musics/testmusic.mp3",
        dataArtist: "test",
        lyrics: "test lyrics",
      ),
      MusicData(
        title: "cheapest flight",
        artist: "PERP",
        image:
            "https://i1.sndcdn.com/artworks-YTJNfuXwL5a59d4E-xezZzw-t500x500.jpg",
        musicPlay: "musics/preptestmusic.mp3",
        dataArtist: "test",
        lyrics: "test lyrics",
        color: Colors.lightBlue,
      ),
      MusicData(
        title: "Young Japaness",
        artist: "OKAMOTO",
        image: "https://i.ytimg.com/vi/qRrwK84G3fg/maxresdefault.jpg",
        musicPlay: "musics/youngjapaness.mp3",
        dataArtist: "test",
        lyrics: "test lyrics",
        color: Colors.red,
      ),
    ];

    AppBar _appbar(BuildContext context) {
      return HomeAppBar(
        context: context,
        title: "Favorite Page",
        style: head3,
        iconButton: [
          IconButton(
            color: Colors.black,
            icon: const Icon(FeatherIcons.chevronLeft),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      );
    }

    return Body(
      context: context,
      haveFAB: true,
      appBar: _appbar(context),
      body: [
        MusicCard(
          height: _height,
          width: _width,
          music: mockMusicData,
          styletitle: head4,
          stylesuptitle: head5,
        ),
      ],
    );
  }
}
