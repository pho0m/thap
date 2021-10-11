import 'package:dt_app/components/appbar.dart';
import 'package:dt_app/models/music_data.dart';
import 'package:dt_app/theme/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class LyricsPage extends StatelessWidget {
  final MusicData music;

  const LyricsPage({
    Key? key,
    required this.music,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppBar _appbar(BuildContext context) {
      return HomeAppBar(
        context: context,
        title: "Lyrics ${music.title}",
        style: head3,
        iconButton: [
          IconButton(
              color: Colors.black,
              icon: const Icon(FeatherIcons.music),
              onPressed: () {}),
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

    return Scaffold(
      appBar: _appbar(context),
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
