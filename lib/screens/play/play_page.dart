import 'package:audioplayers/audioplayers.dart';
import 'package:thap_mobile/helpers/helper.dart';
import 'package:thap_mobile/models/models.dart';
import 'package:thap_mobile/theme/constant.dart';
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

  Widget lyricsBtn() {
    return Card(
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
    );
  }

  Widget favoriteBtn() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      child: IconButton(
        color: Colors.black,
        icon: const Icon(FeatherIcons.heart),
        onPressed: () {},
      ),
    );
  }

  Widget muteBtn() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      child: IconButton(
        color: Colors.black,
        icon: const Icon(FeatherIcons.volume2),
        onPressed: () {},
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
          image: AssetImage(music.image),
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.20), BlendMode.dst),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.white70,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
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
            MusicImage(
              height: _height,
              width: _width,
              musicImage: music.image,
            ),
            sizeBoxs5,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                sizeBoxs40,
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: _width / 1.2,
                      child: ShadowText(
                        style: head2,
                        data: music.title,
                        opacity: 0.2,
                        maxLines: 1,
                        minFontSize: 6,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    sizeBoxs20,
                    SizedBox(
                      width: _width / 1.2,
                      child: GestureDetector(
                        child: ShadowText(
                          style: head4,
                          data: music.artist,
                          opacity: 0.2,
                          maxLines: 1,
                          minFontSize: 6,
                          overflow: TextOverflow.ellipsis,
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ArtistPage(
                                music: music,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: _width,
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
                        // Card(
                        //   shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(15),
                        //   ),
                        //   elevation: 5,
                        //   child: IconButton(
                        //     color: Colors.black,
                        //     icon: const Icon(FeatherIcons.shuffle),
                        //     onPressed: () {},
                        //   ),
                        // ),
                        // previousBtn(),
                        muteBtn(),
                        lyricsBtn(),
                        playBtn(),
                        favoriteBtn(),
                        //nextBtn(),
                        repeatBtn()
                      ],
                    ),
                  ),
                ),
              ),
            ),
            sizeBoxs30,
          ],
        ),
      ),
    );
  }
}
