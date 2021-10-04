import 'package:audioplayers/audioplayers.dart';
import 'package:dt_app/components/components.dart';
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
  IconData playBtn = FeatherIcons.play;

  late AudioPlayer _player;
  late AudioCache cache;

  Duration position = const Duration();
  Duration musicLength = const Duration();

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    music = widget.musicData;

    _player = AudioPlayer();
    cache = AudioCache(fixedPlayer: _player);

    cache.play(music.musicPlay);

    setState(() {
      playBtn = FeatherIcons.pause;
      playing = true;
    });

    _player.onDurationChanged.listen((Duration d) {
      setState(() => musicLength = d);
    });

    _player.onAudioPositionChanged
        .listen((Duration p) => {setState(() => position = p)});
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    AppBar _appbar(BuildContext context) {
      return HomeAppBar(
        context: context,
        title: "",
        style: head3,
        iconButton: [
          IconButton(
            color: Colors.black,
            icon: const Icon(FeatherIcons.fileText),
            onPressed: () {},
          ),
          IconButton(
            color: Colors.black,
            icon: const Icon(FeatherIcons.heart),
            onPressed: () {},
          ),
          IconButton(
            color: Colors.black,
            icon: const Icon(FeatherIcons.circle),
            onPressed: () {},
          ),
          IconButton(
            color: Colors.black,
            icon: const Icon(FeatherIcons.chevronLeft),
            onPressed: () {
              setState(() {});
              Navigator.pop(context);
            },
          ),
        ],
      );
    }

    return Body(
      context: context,
      haveFAB: false,
      appBar: _appbar(context),
      body: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              sizeBoxs60,
              MusicImage(
                height: _height,
                width: _width,
                musicImage: music.image,
              ),
              sizeBoxs60,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  sizeBoxs60,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(music.title),
                      sizeBoxs20,
                      Text(music.artist),
                    ],
                  ),
                ],
              ),
              sizeBoxs60,
              MusicProgressBar(
                width: _width,
                musicLength: musicLength,
                player: _player,
                position: position,
                style: head4,
              ),
              sizeBoxs60,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    color: Colors.black,
                    icon: const Icon(FeatherIcons.shuffle),
                    onPressed: () {},
                  ),
                  IconButton(
                    color: Colors.black,
                    icon: const Icon(FeatherIcons.skipBack),
                    onPressed: () {},
                  ),
                  IconButton(
                    color: Colors.black,
                    icon: Icon(
                      playBtn,
                    ),
                    onPressed: () {
                      if (!playing) {
                        cache.play(music.musicPlay);
                        setState(() {
                          playBtn = FeatherIcons.pause;
                          playing = true;
                        });
                      } else {
                        _player.pause();
                        setState(() {
                          playBtn = FeatherIcons.play;
                          playing = false;
                        });
                      }
                    },
                  ),
                  IconButton(
                    color: Colors.black,
                    icon: const Icon(FeatherIcons.skipForward),
                    onPressed: () {},
                  ),
                  IconButton(
                    color: Colors.black,
                    icon: const Icon(FeatherIcons.repeat),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
