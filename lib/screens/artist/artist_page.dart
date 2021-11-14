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
  List<Artist> artist = [
    mockArtist1975,
    mockArtistPREP,
    mockArtistOka,
    mockNoArtist,
    mockNoArtist,
    mockNoArtist,
  ];

  @override
  Widget build(BuildContext context) {
    var music = widget.music;
    var artistID = int.parse(music.artistID);

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(0, 25, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  IconButton(
                    icon: const Icon(FeatherIcons.chevronLeft),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(0.0),
                  width: _width,
                  height: _height / 3,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      image: AssetImage(
                        artist[artistID].imageSub,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      ShadowText(
                        style: head1,
                        data: artist[artistID].name,
                        opacity: 0.2,
                        maxLines: 2,
                        minFontSize: 12,
                        overflow: TextOverflow.ellipsis,
                      ),
                      ShadowText(
                        data: artist[artistID].name,
                        style: head3,
                        opacity: 0.2,
                        minFontSize: 12,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                height: _height / 5,
                width: _width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: _width / 2,
                      child: ListView(
                        padding: const EdgeInsets.all(20),
                        physics: const BouncingScrollPhysics(),
                        children: [
                          const AutoSizeText(
                            "Personal Data",
                            style: head3,
                          ),
                          sizeBoxs5,
                          AutoSizeText(
                            artist[artistID].dataArtist,
                            style: sub1,
                            maxLines: 10,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: _width / 2.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(
                              artist[artistID].imageArtist,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            sizeBoxs5,
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  color: Colors.grey[300],
                ),
                height: _height / 5,
                width: _width,
                child: ListView(
                  padding: const EdgeInsets.all(20),
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const AutoSizeText(
                      "History",
                      style: head3,
                      maxLines: 2,
                      minFontSize: 10,
                      overflow: TextOverflow.ellipsis,
                    ),
                    AutoSizeText(
                      artist[artistID].history,
                      style: sub1,
                    ),
                  ],
                ),
              ),
            ),
            sizeBoxs10,
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ShadowText(
                      data: "Playlist",
                      style: head2,
                      opacity: 0.2,
                      minFontSize: 10,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  sizeBoxs10,
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      height: _height / 4,
                      width: _width,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: GridView.builder(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 20,
                            crossAxisCount: 1,
                          ),
                          itemCount: mockPlTest.length,
                          itemBuilder: (BuildContext ctx, index) {
                            return GestureDetector(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(60),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          mockPlTest[index].image,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  sizeBoxs10,
                                  AutoSizeText(
                                    mockPlTest[index].name,
                                    style: head2,
                                    minFontSize: 10,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  AutoSizeText(
                                    mockPlTest[index].description,
                                    style: head2,
                                    minFontSize: 10,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PlaylistDetailPage(
                                      playlistData: mockPlTest[index],
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
            ),
            sizeBoxs20,
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ShadowText(
                data: "Composing Music",
                style: head2,
                opacity: 0.2,
                minFontSize: 10,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            MusicCard(
              music: mockMusFav,
              styletitle: head4,
              stylesuptitle: head5,
              height: 10,
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
