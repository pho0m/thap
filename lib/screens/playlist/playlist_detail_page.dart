import 'package:flutter/material.dart';

import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'package:thap_mobile/helpers/helper.dart';
import 'package:thap_mobile/models/playlist.dart';
import 'package:thap_mobile/theme/constant.dart';

class PlaylistDetailPage extends StatefulWidget {
  final Playlist playlistData;

  const PlaylistDetailPage({
    Key? key,
    required this.playlistData,
  }) : super(key: key);

  @override
  _PlaylistDetailPageState createState() => _PlaylistDetailPageState();
}

class _PlaylistDetailPageState extends State<PlaylistDetailPage> {
  @override
  Widget build(BuildContext context) {
    var playlistData = widget.playlistData;

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    AppBar _appbar(BuildContext context) {
      return HomeAppBar(
        context: context,
        title: playlistData.name,
        style: head3,
        iconButton: [
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

    return Body(
      context: context,
      appBar: _appbar(context),
      body: [
        MusicCard(
          height: _height,
          width: _width,
          music: playlistData.musicList,
          styletitle: head4,
          stylesuptitle: head5,
        ),
      ],
    );
  }
}
