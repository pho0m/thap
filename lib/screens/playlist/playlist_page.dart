import 'package:dt_app/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:dt_app/models/playlist.dart';

import '../route.dart';
import 'package:dt_app/theme/constant.dart';

class PlaylistPage extends StatefulWidget {
  const PlaylistPage({Key? key}) : super(key: key);

  @override
  State<PlaylistPage> createState() => _PlaylistPage();
}

class _PlaylistPage extends State<PlaylistPage> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    List<MusicData> mockMusicData1 = [
      MusicData(
        title: "if you shy (let me knows)",
        artist: "1975",
        image:
            "https://images.squarespace-cdn.com/content/v1/56858337cbced60d3b293aef/1572288107885-V2AZJF8YVG5NARZRU7YE/Albumism_The1975_ABriefInquiryIntoOnlineRelationships_MainImage.png.jpg?format=1000w",
        musicPlay: "musics/testmusic.mp3",
      ),
      MusicData(
        title: "cheapest flight",
        artist: "PERP",
        image:
            "https://i1.sndcdn.com/artworks-YTJNfuXwL5a59d4E-xezZzw-t500x500.jpg",
        musicPlay: "musics/preptestmusic.mp3",
      ),
      MusicData(
        title: "cheapest flight",
        artist: "PERP",
        image:
            "https://i1.sndcdn.com/artworks-YTJNfuXwL5a59d4E-xezZzw-t500x500.jpg",
        musicPlay: "musics/preptestmusic.mp3",
      ),
    ];

    List<MusicData> mockMusicData2 = [
      MusicData(
        title: "if you shy (let me knows)",
        artist: "1975",
        image:
            "https://images.squarespace-cdn.com/content/v1/56858337cbced60d3b293aef/1572288107885-V2AZJF8YVG5NARZRU7YE/Albumism_The1975_ABriefInquiryIntoOnlineRelationships_MainImage.png.jpg?format=1000w",
        musicPlay: "musics/testmusic.mp3",
      ),
    ];

    List<Playlist> mockPlaylist = [
      Playlist(
        playlistName: "One Music Popular",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
        musicList: mockMusicData1,
      ),
      Playlist(
        playlistName: "Famous music",
        description:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
        musicList: mockMusicData2,
      )
    ];
    AppBar _appbar(BuildContext context) {
      return HomeAppBar(
        context: context,
        title: "Playlist Page",
        style: head3,
        iconButton: [
          IconButton(
            color: Colors.black,
            icon: const Icon(FeatherIcons.circle),
            onPressed: () {},
          ),
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
        sizeBoxs10,
        PlaylistCrad(
          playList: mockPlaylist,
          width: _width,
          bgColor: Colors.grey[300],
          cardColor: Colors.grey[400],
          pNameStyle: head3,
          desStyle: head5,
        )
      ],
    );
  }
}
