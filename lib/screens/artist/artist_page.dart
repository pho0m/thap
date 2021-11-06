import 'package:auto_size_text/auto_size_text.dart';
import 'package:dt_app/mock/mock.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'package:dt_app/models/models.dart';
import 'package:dt_app/theme/constant.dart';
import 'package:dt_app/helpers/helper.dart';
import '../route.dart';

class ArtistPage extends StatefulWidget {
  final MusicData music;

  const ArtistPage({
    required this.music,
    Key? key,
  }) : super(key: key);

  @override
  _ProfileArtistPage createState() => _ProfileArtistPage();
}

class _ProfileArtistPage extends State<ArtistPage> {
  //FIXME Wait For API
  List<Artist> artist = [
    mockArtist1975,
    mockArtistPREP,
    mockArtistOka,
    mockNoArtist,
  ];

  @override
  Widget build(BuildContext context) {
    var music = widget.music;
    var artistID = int.parse(music.artistID);

    return Body(
      context: context,
      haveFAB: true,
      appBar: _appbar(context),
      body: [
        sizeBoxs10,
        Center(
          child: Column(
            children: [
              Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                      artist[artistID].image,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        sizeBoxs30,
        ShadowText(
          style: head1,
          data: artist[artistID].name,
          opacity: 0.2,
          maxLines: 2,
          minFontSize: 10,
          overflow: TextOverflow.ellipsis,
        ),
        sizeBoxs20,
        Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                  left: 20,
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Colors.grey[300],
                  ),
                  width: 350,
                  height: 300,
                  child: ListView(
                    children: [
                      AutoSizeText(
                        artist[artistID].history,
                        style: head4,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 20,
                      ),
                    ],
                  ),
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
