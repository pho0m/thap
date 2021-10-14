import 'package:dt_app/components/components.dart';
import 'package:dt_app/theme/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../route.dart';

class ProfileArtistPage extends StatefulWidget {
  final MusicData music;
  const ProfileArtistPage({
    required this.music,
    Key? key,
  }) : super(key: key);

  @override
  _ProfileArtistPage createState() => _ProfileArtistPage();
}

class _ProfileArtistPage extends State<ProfileArtistPage> {
  final MusicData mockData = MusicData(
    title: "if you shy (let me knows)",
    artist: "1975",
    image:
        "https://images.squarespace-cdn.com/content/v1/56858337cbced60d3b293aef/1572288107885-V2AZJF8YVG5NARZRU7YE/Albumism_The1975_ABriefInquiryIntoOnlineRelationships_MainImage.png.jpg?format=1000w",
    musicPlay: "musics/testmusic.mp3",
    dataArtist:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  );
  @override
  Widget build(BuildContext context) {
    return Body(
      context: context,
      haveFAB: false,
      appBar: _appbar(context),
      body: [
        sizeBoxs10,
        Center(
          child: Column(
            children: [
              Container(
                width: 300,
                height: 200,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image:
                        ExactAssetImage('assets/images/placeholder-black.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        sizeBoxs20,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text(
              "History",
              style: TextStyle(fontSize: 30.0),
            )
          ],
        ),
        sizeBoxs20,
        Center(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.grey[300],
                ),
                width: 350,
                height: 375,
                child: ListView(
                  children: [
                    Text(mockData.dataArtist),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  AppBar _appbar(BuildContext context) {
    return HomeAppBar(
      context: context,
      title: "ArtistProfile",
      style: head3,
      iconButton: [
        IconButton(
          color: Colors.black,
          icon: const Icon(FeatherIcons.home),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
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
}
