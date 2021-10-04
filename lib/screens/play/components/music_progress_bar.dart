import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MusicProgressBar extends StatelessWidget {
  double width;
  TextStyle style;
  Duration position;
  Duration musicLength;
  AudioPlayer player;

  MusicProgressBar({
    Key? key,
    required this.width,
    required this.style,
    required this.position,
    required this.musicLength,
    required this.player,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void seekToSec(int sec) {
      Duration newPos = Duration(seconds: sec);
      player.seek(newPos);
    }

    Widget slider() {
      return SizedBox(
        width: width / 1.5,
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

    return SizedBox(
      width: 500.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "${position.inMinutes}:${position.inSeconds.remainder(60)}",
            style: style,
          ),
          slider(),
          Text(
            "${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
            style: style,
          ),
        ],
      ),
    );
  }
}
