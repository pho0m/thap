import 'package:dt_app/mock/mock.dart';
import 'package:flutter/material.dart';

import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'package:dt_app/helpers/helper.dart';
import 'package:dt_app/theme/constant.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    AppBar _appbar(BuildContext context) {
      return HomeAppBar(
        context: context,
        title: "Favorite Page",
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
      haveFAB: false,
      appBar: _appbar(context),
      body: [
        MusicCard(
          height: _height,
          width: _width,
          music: mockMusFav,
          styletitle: head4,
          stylesuptitle: head5,
        ),
      ],
    );
  }
}
