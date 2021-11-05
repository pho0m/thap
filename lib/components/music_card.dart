import 'package:dt_app/components/shadow_text.dart';
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
  late int idx;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: widget.music.length,
      itemBuilder: (BuildContext ctxt, int index) {
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
                    widget.music[index].image,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              title: ShadowText(
                data: widget.music[index].title,
                style: widget.styletitle,
                minFontSize: 10,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                opacity: 0.2,
              ),
              subtitle: ShadowText(
                data: widget.music[index].artist,
                style: widget.stylesuptitle,
                minFontSize: 10,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                opacity: 0.2,
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PlayerPage(
                    musicData: widget.music[index],
                  ),
                ));
              },
            ),
          ),
        );
      },
    );
  }
}
