import 'package:dt_app/components/components.dart';
import 'package:dt_app/models/music.dart';
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
        title: "Lyrics  :  ${music.title}",
        style: head3,
        iconButton: [
          IconButton(
            color: Colors.black,
            icon: const Icon(FeatherIcons.volume2),
            onPressed: () {},
          ),
          IconButton(
              color: Colors.black,
              icon: const Icon(FeatherIcons.mic),
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
      body: Padding(
        padding: const EdgeInsets.only(
          left: 30,
          right: 30,
          top: 30,
          bottom: 30,
        ),
        child: ListView(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.15),
              ),
              color: Colors.grey[300],
              child: ListTile(
                title: ShadowText(
                  data: music.title,
                  style: head4,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  minFontSize: 10,
                  opacity: 0.2,
                ),
                subtitle: ShadowText(
                  data: music.lyrics,
                  style: head5,
                  // minFontSize: 10,
                  maxLines: 100,
                  overflow: TextOverflow.ellipsis, minFontSize: 10,
                  opacity: 0.2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
