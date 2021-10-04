import 'package:dt_app/theme/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../route.dart';
import '../../theme/constant.dart';

class PlaylistPage extends StatefulWidget {
  const PlaylistPage({Key? key}) : super(key: key);

  @override
  State<PlaylistPage> createState() => _PlaylistPage();
}

class _PlaylistPage extends State<PlaylistPage> {
  final List<Map> music = List.generate(
    1,
    (index) => {"id": index, "name": "result $index"},
  ).toList();

  final Playlist mockDataMusic = Playlist(
    title: "if you shy (let me knows)",
    artist: "1975",
  );

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: appBar(_width),
      body: _body(
        [
          sizeBoxs10,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(15),
            ),
            height: 700,
            width: _width - 30,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 20, //horizon
                  crossAxisSpacing: 20, //vertical
                  childAspectRatio: 1.5,
                  crossAxisCount: 2,
                ),
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    height: 10,
                    width: 10,
                    alignment: Alignment.centerLeft,
                    child: Center(
                      child: Text(
                        mockDataMusic.title,
                        // mockDataMusic.artist,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(15),
                    ),
                  );
                  //   return Container(
                  //     height: 10,
                  //     width: 10,
                  //     alignment: Alignment.center,
                  //     child: Text(
                  //       mockDataMusic.title,
                  //     ),
                  //     decoration: BoxDecoration(
                  //       color: Colors.grey[400],
                  //       borderRadius: BorderRadius.circular(15),
                  //     ),
                  //   );
                },
              ),
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

  AppBar appBar(double width) {
    return AppBar(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      title: const Text(
        "PlayList",
        style: head3,
      ),
      elevation: 0,
      actions: [
        IconButton(
          color: Colors.black,
          icon: const Icon(FeatherIcons.circle),
          onPressed: () {
            //FIXME
          },
        ),
      ],
    );
  }
}
