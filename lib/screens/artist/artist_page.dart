import 'package:auto_size_text/auto_size_text.dart';
import 'package:dt_app/mock/mock.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'package:dt_app/models/models.dart';
import 'package:dt_app/theme/constant.dart';
import 'package:dt_app/helpers/helper.dart';

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
        // sizeBoxs10,
        Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            children: [
              Container(
                width: 400,
                height: 230,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    image: NetworkImage(
                      artist[artistID].imageSub,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        sizeBoxs30,

        Column(
          children: [
            ShadowText(
              style: head1,
              data: artist[artistID].name,
              opacity: 0.2,
              maxLines: 2,
              minFontSize: 10,
              overflow: TextOverflow.ellipsis,
            ),
            ShadowText(
              data: artist[artistID].name,
              style: sub1,
              opacity: 0.2,
              minFontSize: 10,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),

        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(15),
            ),
            height: 150,
            width: 400,
            child: Row(
              children: [
                SizedBox(
                  width: 130,
                  height: 130,
                  child: ListView(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 10,
                          left: 8,
                        ),
                        child: Text(
                          "Personal Data",
                          style: sub2,
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              artist[artistID].dataArtist,
                              style: const TextStyle(fontSize: 8),
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage(
                              artist[artistID].imageArtist,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        sizeBoxs20,
        Column(
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
                    Column(
                      children: [
                        const ShadowText(
                          data: "History",
                          style: sub2,
                          opacity: 0.2,
                          maxLines: 2,
                          minFontSize: 10,
                          overflow: TextOverflow.ellipsis,
                        ),
                        AutoSizeText(
                          artist[artistID].history,
                          style: const TextStyle(fontSize: 8),
                          maxLines: 20,
                          minFontSize: 10,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  AppBar _appbar(BuildContext context) {
    return HomeAppBar(
      context: context,
      title: "",
      style: head6,
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
}
