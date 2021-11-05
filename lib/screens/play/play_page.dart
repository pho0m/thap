import 'package:audioplayers/audioplayers.dart';
import 'package:dt_app/components/components.dart';
import 'package:dt_app/theme/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../route.dart';

class PlayerPage extends StatefulWidget {
  final int queue;
  final List<MusicData> musicData;

  const PlayerPage({
    Key? key,
    required this.musicData,
    required this.queue,
  }) : super(key: key);

  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  late MusicData music;
  late int queue;

  bool playing = false;
  bool repeat = false;
  bool nextDone = true;
  bool prevDone = true;

  late AudioPlayer _player;
  late AudioCache cache;

  Duration position = const Duration();
  Duration musicLength = const Duration();

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  Widget playBtn() {
    return SizedBox(
      height: 80,
      width: 80,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 5,
        child: IconButton(
          padding: const EdgeInsets.all(4),
          icon: playing
              ? const Icon(FeatherIcons.pause)
              : const Icon(FeatherIcons.play),
          iconSize: 40,
          onPressed: () {
            if (!playing) {
              cache.play(music.musicPlay);
              setState(() {
                playBtn();
                playing = true;
              });
            } else {
              _player.pause();
              setState(() {
                playBtn();
                playing = false;
              });
            }
          },
        ),
      ),
    );
  }

  Widget nextBtn() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      child: IconButton(
        padding: const EdgeInsets.all(4),
        icon: const Icon(FeatherIcons.skipForward),
        onPressed: () {
          // if (!playing) {
          //   queue++;
          //   cache.play(music.musicPlay);
          //   setState(() {
          //     playBtn();
          //     playing = true;
          //   });
          // } else {
          //   _player.stop();
          //   queue++;
          //   cache.play(music.musicPlay);
          //   setState(() {
          //     playBtn();
          //     playing = true;
          //   });
          // }
        },
      ),
    );
  }

  Widget previousBtn() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      child: IconButton(
        padding: const EdgeInsets.all(4),
        icon: const Icon(FeatherIcons.skipBack),
        onPressed: () {
          _player.stop();
          setState(() {
            queue--;

            // playing = false;
            // queue--;
            // playing = true;
          });
        },
      ),
    );
  }

  Widget repeatBtn() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      child: IconButton(
        padding: const EdgeInsets.all(4),
        icon: const Icon(FeatherIcons.repeat),
        color: repeat ? Colors.grey : Colors.black,
        onPressed: () {
          if (!repeat) {
            _player.setReleaseMode(ReleaseMode.LOOP);
            setState(() {
              repeatBtn();
              repeat = true;
            });
          } else {
            setState(() {
              _player.setReleaseMode(ReleaseMode.RELEASE);
              repeatBtn();
              repeat = false;
            });
          }
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    queue = widget.queue;
    music = widget.musicData[queue];
    _player = AudioPlayer();
    cache = AudioCache(fixedPlayer: _player);

    cache.play(music.musicPlay);

    setState(() {
      playBtn();
      playing = true;
    });

    _player.onDurationChanged.listen((Duration d) {
      setState(() => musicLength = d);
    });

    _player.onAudioPositionChanged
        .listen((Duration p) => {setState(() => position = p)});

    _player.onPlayerCompletion.listen((event) {
      setState(() {
        position = const Duration(seconds: 0);
        playing = false;
        repeat = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    queue = widget.queue;
    music = widget.musicData[queue];

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    Widget slider() {
      return SizedBox(
        width: _width / 1.5,
        child: Slider.adaptive(
            activeColor: music.color,
            inactiveColor: Colors.grey[800],
            value: position.inSeconds.toDouble(),
            max: musicLength.inSeconds.toDouble(),
            onChanged: (value) {
              seekToSec(value.toInt());
            }),
      );
    }

    AppBar _appbar(context) {
      return HomeAppBar(
        context: context,
        title: "",
        style: head3,
        iconButton: [
          IconButton(
            color: Colors.black,
            icon: const Icon(FeatherIcons.chevronLeft),
            onPressed: () {
              _player.stop();
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    }

    return Scaffold(
      appBar: _appbar(context),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(music.image),
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.dstATop),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    sizeBoxs10,
                    MusicImage(
                      height: _height,
                      width: _width,
                      musicImage: music.image,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50.0, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            elevation: 5,
                            child: IconButton(
                              color: Colors.black,
                              icon: const Icon(FeatherIcons.fileText),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LyricsPage(
                                      music: music,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            elevation: 5,
                            child: IconButton(
                              color: Colors.black,
                              icon: const Icon(FeatherIcons.heart),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    sizeBoxs30,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        sizeBoxs60,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ShadowText(
                              style: head4,
                              data: music.title,
                              opacity: 0.2,
                            ),
                            sizeBoxs20,
                            GestureDetector(
                              child: ShadowText(
                                style: head4,
                                data: music.artist,
                                opacity: 0.2,
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProfileArtistPage(
                                      music: music,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    sizeBoxs60,
                    SizedBox(
                      width: 500.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "${position.inMinutes}:${position.inSeconds.remainder(60)}",
                            style: head4,
                          ),
                          slider(),
                          Text(
                            "${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                            style: head4,
                          ),
                        ],
                      ),
                    ),
                    sizeBoxs20,
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: _width / 1.27,
                          height: _height / 6.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                elevation: 5,
                                child: IconButton(
                                  color: Colors.black,
                                  icon: const Icon(FeatherIcons.shuffle),
                                  onPressed: () {},
                                ),
                              ),
                              previousBtn(),
                              playBtn(),
                              nextBtn(),
                              repeatBtn()
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
