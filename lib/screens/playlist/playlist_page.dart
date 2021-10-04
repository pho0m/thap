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

    return Scaffold(
      appBar: appBar(_width),
      body: _body(
        [
          sizeBoxs10,
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(15),
              ),
              height: 700,
              width: _width - 30,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 20, //horizon
                    crossAxisSpacing: 20, //vertical
                    childAspectRatio: 1.5,
                    crossAxisCount: 2,
                  ),
                  itemCount: mockPlaylist.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return GestureDetector(
                      child: Container(
                        height: 10,
                        width: 10,
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(mockPlaylist[index].playlistName),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PlaylistDetailPage(
                              playlistData: mockPlaylist[index],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        ],
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

  AppBar appBar(double width) {
    return AppBar(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      title: const Text(
        "PlayList",
        style: head3,
      ),
      elevation: 0,
      actions: [
        IconButton(
          color: Colors.black,
          icon: const Icon(FeatherIcons.circle),
          onPressed: () {
            //FIXME
          },
        ),
      ],
    );
  }
}
