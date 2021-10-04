import 'package:audioplayers/audioplayers.dart';
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

    Widget slider() {
      return SizedBox(
        width: _width / 1.5,
        child: Slider.adaptive(
            activeColor: Colors.grey[800],
            inactiveColor: Colors.grey[350],
            value: position.inSeconds.toDouble(),
            max: musicLength.inSeconds.toDouble(),
            onChanged: (value) {
              seekToSec(value.toInt());
            }),
      );
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
        actions: [
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
      ),
      body: _body(
        [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 70),
                Container(
                  width: _width / 1.3,
                  height: _height / 3.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    image: DecorationImage(
                      image: NetworkImage(music.image),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                ),
                const SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 60),
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
                const SizedBox(height: 60),
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
                const SizedBox(height: 60),
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
}
