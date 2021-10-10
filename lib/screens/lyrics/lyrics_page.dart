import 'package:dt_app/models/music_data.dart';
import 'package:dt_app/theme/constant.dart';
import 'package:flutter/material.dart';

class LyricsPage extends StatelessWidget {
  final MusicData music;

  const LyricsPage({
    Key? key,
    required this.music,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.chevron_left,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
              // do something
            },
          )
        ],
        title: Text(
          "Lyrics  ${music.title} ",
          style: head2,
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(
            left: 20.0,
            top: 20.0,
            right: 20.0,
          ),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.grey,
          ),
          width: 300,
          height: 700,
          child: ListView(
            children: [
              Text(music.lyrics),
            ],
          ),
        ),
      ),
    );
  }
}
