import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../screens/route.dart';

class MusicCard extends StatefulWidget {
  final double width;
  final double height;
  final List<MusicData> music;
  final TextStyle styletitle;
  final TextStyle stylesuptitle;

  const MusicCard({
    Key? key,
    required this.width,
    required this.height,
    required this.music,
    required this.styletitle,
    required this.stylesuptitle,
  }) : super(key: key);

  @override
  _MusicCardState createState() => _MusicCardState();
}

class _MusicCardState extends State<MusicCard> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: widget.music.length,
      itemBuilder: (BuildContext ctxt, int idx) {
        return Padding(
          padding: const EdgeInsets.only(
            left: 15.0,
            top: 5.0,
            right: 15.0,
            bottom: 5.0,
          ),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.15),
            ),
            color: Colors.grey[300],
            child: ListTile(
              leading: SizedBox(
                width: 50,
                height: 50,
                child: Image(
                  image: NetworkImage(
                    widget.music[idx].image,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              title: AutoSizeText(
                widget.music[idx].title,
                style: widget.styletitle,
                minFontSize: 10,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: AutoSizeText(
                widget.music[idx].artist,
                style: widget.stylesuptitle,
                minFontSize: 10,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlayerPage(
                      musicData: widget.music,
                      queue: idx,
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
