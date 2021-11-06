import 'package:auto_size_text/auto_size_text.dart';
import 'package:dt_app/models/playlist.dart';
import 'package:dt_app/theme/constant.dart';
import 'package:flutter/material.dart';

import '../../route.dart';

class PlaylistCrad extends StatefulWidget {
  final double width;
  final List<Playlist> playList;
  final Color? bgColor;
  final Color? cardColor;
  final TextStyle pNameStyle;
  final TextStyle desStyle;

  const PlaylistCrad({
    Key? key,
    required this.width,
    required this.playList,
    required this.bgColor,
    required this.cardColor,
    required this.pNameStyle,
    required this.desStyle,
  }) : super(key: key);

  @override
  _PlaylistCrad createState() => _PlaylistCrad();
}

class _PlaylistCrad extends State<PlaylistCrad> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: widget.bgColor,
          borderRadius: BorderRadius.circular(15),
        ),
        height: 700,
        width: widget.width - 30,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 0.5,
              crossAxisCount: 2,
            ),
            itemCount: widget.playList.length,
            itemBuilder: (BuildContext ctx, index) {
              return GestureDetector(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(60),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              image: AssetImage(
                                'assets/images/placeholder-black.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        sizeBoxs10,
                        AutoSizeText(
                          widget.playList[index].playlistName,
                          style: widget.pNameStyle,
                          minFontSize: 10,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        AutoSizeText(
                          widget.playList[index].description,
                          style: widget.desStyle,
                          minFontSize: 10,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    )),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlaylistDetailPage(
                        playlistData: widget.playList[index],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
