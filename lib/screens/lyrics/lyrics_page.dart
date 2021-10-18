import 'package:auto_size_text/auto_size_text.dart';
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
          top: 20.0,
          right: 18.0,
          left: 18.0,
        ),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.15),
          ),
          color: Colors.grey[300],
          child: ListTile(
            title: AutoSizeText(
              music.title,
              style: head4,
              minFontSize: 10,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: AutoSizeText(
              music.lyrics,
              style: sub1,
              minFontSize: 10,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        // child: Container(
        //   width: 500,
        //   height: 650,
        //   color: dtPrimaryColor,
        //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
        //   child: AutoSizeText(
        //     music.lyrics,
        //     style: sub1,
        //   ),
        // ),
      ),
    );
  }
}
