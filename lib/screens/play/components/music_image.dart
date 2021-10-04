import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MusicImage extends StatelessWidget {
  double width;
  double height;
  final String musicImage;

  MusicImage({
    Key? key,
    required this.width,
    required this.height,
    required this.musicImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width / 1.3,
      height: height / 3.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        image: DecorationImage(
          image: NetworkImage(musicImage),
          fit: BoxFit.cover,
        ),
        shape: BoxShape.rectangle,
      ),
    );
  }
}
