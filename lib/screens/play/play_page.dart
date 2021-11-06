import 'package:audioplayers/audioplayers.dart';
import 'package:dt_app/helpers/helper.dart';
import 'package:dt_app/models/models.dart';
import 'package:dt_app/theme/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../route.dart';

class PlayerPage extends StatefulWidget {
  final MusicData musicData;

  const PlayerPage({
    Key? key,
    required this.musicData,
  }) : super(key: key);

  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  late MusicData music;

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
              cache.play(music.music);
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
          _player.stop();
          position = const Duration(seconds: 0);
          playing = false;
          repeat = false;
          setState(() {
            cache.play(music.music);
            playing = true;
          });
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
          position = const Duration(seconds: 0);
          playing = false;
          repeat = false;
          setState(() {
            cache.play(music.music);
            playing = true;
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

    //queue = widget.queue;
    music = widget.musicData;

    _player = AudioPlayer();
    cache = AudioCache(fixedPlayer: _player);

    cache.play(music.music);

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
      });
    });
  }

  @override
  Widget build(BuildContext context) {
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

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(music.image),
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.20), BlendMode.dst),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.white70,
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
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
                              _player.stop();
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    ),
                    sizeBoxs20,
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
                    sizeBoxs20,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        sizeBoxs40,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ShadowText(
                              style: head2,
                              data: music.title,
                              opacity: 0.2,
                              maxLines: 2,
                              minFontSize: 10,
                              overflow: TextOverflow.ellipsis,
                            ),
                            sizeBoxs20,
                            GestureDetector(
                              child: ShadowText(
                                style: head4,
                                data: music.artist,
                                opacity: 0.2,
                                maxLines: 2,
                                minFontSize: 10,
                                overflow: TextOverflow.ellipsis,
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
                    sizeBoxs10,
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: _width,
                            height: _height / 6.8,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
