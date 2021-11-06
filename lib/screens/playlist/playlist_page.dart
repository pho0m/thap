import 'package:dt_app/mock/mock.dart';
import 'package:flutter/material.dart';

import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'package:dt_app/helpers/helper.dart';
import 'package:dt_app/theme/constant.dart';
import '../route.dart';

class PlaylistPage extends StatefulWidget {
  const PlaylistPage({Key? key}) : super(key: key);

  @override
  State<PlaylistPage> createState() => _PlaylistPage();
}

class _PlaylistPage extends State<PlaylistPage> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    AppBar _appbar(BuildContext context) {
      return HomeAppBar(
        context: context,
        title: "Playlist Page",
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
      haveFAB: true,
      appBar: _appbar(context),
      body: [
        sizeBoxs10,
        PlaylistCrad(
          playList: mockPlaylist,
          width: _width,
          bgColor: Colors.grey[300],
          cardColor: Colors.grey[400],
          pNameStyle: head3,
          desStyle: head5,
        )
      ],
    );
  }
}
