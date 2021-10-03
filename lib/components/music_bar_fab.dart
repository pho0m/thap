// ignore_for_file: must_be_immutable
import 'package:dt_app/theme/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class MusicBar extends StatefulWidget {
  //MusicData musicData;
  BuildContext context;
  MusicBar({
    Key? key,
    required this.context,
    //required this.musicData,
  }) : super(key: key);

  @override
  _MusicBarState createState() => _MusicBarState();
}

class _MusicBarState extends State<MusicBar> {
  @override
  Widget build(BuildContext ctx) {
    double _width = MediaQuery.of(widget.context).size.width;

    // late MusicData music;

    // bool playing = false;
    // IconData playBtn = FeatherIcons.play;

    // late AudioPlayer _player;
    // late AudioCache cache;

    // Duration position = const Duration();
    // Duration musicLength = const Duration();

    // void seekToSec(int sec) {
    //   Duration newPos = Duration(seconds: sec);
    //   _player.seek(newPos);
    // }

    // @override
    // void initState() {
    //   super.initState();

    //   _player = AudioPlayer();
    //   cache = AudioCache(fixedPlayer: _player);

    //   _player.onDurationChanged.listen((Duration d) {
    //     setState(() => musicLength = d);
    //   });

    //   _player.onAudioPositionChanged
    //       .listen((Duration p) => {setState(() => position = p)});
    // }

    return Container(
      width: _width / 1.10,
      height: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.black12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://images.squarespace-cdn.com/content/v1/56858337cbced60d3b293aef/1572288107885-V2AZJF8YVG5NARZRU7YE/Albumism_The1975_ABriefInquiryIntoOnlineRelationships_MainImage.png.jpg?format=1000w"),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("test"),
                      Text(
                        "test",
                        style: cap,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(FeatherIcons.skipBack),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(FeatherIcons.play),
                  onPressed: () {
                    // if (!playing) {
                    //   //now let's play the song
                    //   //cache.play(music.musicPlay);
                    //   setState(() {
                    //     playBtn = FeatherIcons.pause;
                    //     playing = true;
                    //   });
                    // } else {
                    //   _player.pause();
                    //   setState(() {
                    //     playBtn = FeatherIcons.play;
                    //     playing = false;
                    //   });
                    // }
                  },
                ),
                IconButton(
                  icon: const Icon(FeatherIcons.skipForward),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
